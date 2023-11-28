import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FolhaPag extends StatefulWidget {
  final Map<String, dynamic>? funcionarioData;

  const FolhaPag({Key? key, required this.funcionarioData}) : super(key: key);

  @override
  _FolhaPagState createState() => _FolhaPagState();
}

class _FolhaPagState extends State<FolhaPag> {
  late Map<String, dynamic>? funcionarioInfos;
  String salarioAtual = "";
  String valorProventos = "";
  String valorDesconto = "";
  String valorLiquido = "";
  String faixaIRRf = "";
  String mensagem = "";
  String faixaIrf = "";
  String fgtsMEs = "";

  @override
  void initState() {
    super.initState();
    // Chame a função fetchData no initState
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('http://10.0.2.2:8080/holerite/'));
      List<dynamic> holerites = await json.decode(response.body);
      List<dynamic> listaFolhasFuncionario = [];
      Map<String, dynamic> folhaAtual;

      for (var holerite in holerites) {
        print('codFolha : ${holerite['codFolha']}');
        print('cod_funcionario: ${holerite['cod_funcionario']}');
        print('valor_proventos: ${holerite['valor_proventos']}');
        print('valor_descontos: ${holerite['valor_descontos']}');
        print('valor_liquido: ${holerite['valor_liquido']}');
        print('mensagem: ${holerite['mensagem']}');
        print('salario: ${holerite['salario']}');

        if (holerite['cod_funcionario'] == funcionarioInfos?['codigo_funcionario']) {
          listaFolhasFuncionario.add(holerite);
        }
      }
      var maiorFolhaFunc;
      for (var folha in listaFolhasFuncionario) {
        if (maiorFolhaFunc == null || folha['codFolha'] > maiorFolhaFunc['codFolha']) {
          maiorFolhaFunc = folha;
        }
      }

      salarioAtual = maiorFolhaFunc?['salario'];
      valorProventos = maiorFolhaFunc['valor_proventos'];
      valorDesconto = maiorFolhaFunc['valor_descontos'];
      valorLiquido = maiorFolhaFunc['valor_liquido'];
      mensagem = maiorFolhaFunc['mensagem'];
      faixaIrf = maiorFolhaFunc['faixa_irrf'];
      fgtsMEs = maiorFolhaFunc['fgtsmes'];


      // print(maiorFolhaFunc?['codFolha']);
    } catch (err) {
      print(err);
    }

    setState(() {});
  }

  double retornaValorLiquido(Map<String, dynamic> funcionario) {
    double inss = funcionario['inss'];
    double salario = funcionario['salario'];
    double planoSaude = funcionario['plano_DE_SAUDE'];
    double vr = funcionario['vale_refeicao'];
    double vt = funcionario['vale_transporte'];
    double va = funcionario['vale_alimentacao'];

    double descontoINSS = (salario * (inss / 100));

    return (salario - descontoINSS) - planoSaude + vr + vt + va;
  }

  double retornaTotalDescontado(Map<String, dynamic> funcionario) {
    double inss = funcionario['inss'];
    double salario = funcionario['salario'];

    return (salario * (inss / 100));
  }

  void _onVoltarButtonPressed(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    funcionarioInfos = widget.funcionarioData;
    double totalLiquido =
        funcionarioInfos != null ? retornaValorLiquido(funcionarioInfos!) : 0.0;
    double valorDescontado =
        funcionarioInfos != null ? retornaTotalDescontado(funcionarioInfos!) : 0.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff212157),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                      padding: const EdgeInsets.fromLTRB(32, 25, 31, 25.05),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xffe3e3ff),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 1, 0, 0),
                            width: 64,
                            height: 51.95,
                            child: Image.asset(
                              'assets/images/logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 1.05, 0, 0),
                              constraints: const BoxConstraints(
                                maxWidth: 111,
                              ),
                              child: const Text(
                                '\nHermes Co.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  height: 1.25,
                                  color: Color(0xff212157),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 17.95),
                            width: 32,
                            height: 35,
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 32,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: const Text(
                          'Holerites',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                            color: Color(0xffe3e3ff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Salário:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      salarioAtual,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Valor de Proventos:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ $valorProventos',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Valor Descontos:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ $valorDesconto',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Valor Líquido:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ $valorLiquido',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 15.0),

                    const Text(
                      'Taxas: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      'IRRF: $faixaIrf',
                      style: const TextStyle(
                        fontSize: 14,
                        height: 2,
                      ),
                    ),

                       Text(
                      'FGTS: $fgtsMEs',
                      style: const TextStyle(
                        fontSize: 14,
                        height: 2,
                      ),
                    ),
                    

                    const SizedBox(height: 15.0),

                    const Text(
                      'Mensagem:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      '$mensagem',
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _onVoltarButtonPressed(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffe3e3ff),
                      foregroundColor: const Color(0xff212157),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(300, 48),
                      elevation: 2,
                    ),
                    child: const Text(
                      'VOLTAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  // Adicione botões adicionais aqui, se necessário
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}