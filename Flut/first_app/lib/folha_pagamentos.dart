import 'package:flutter/material.dart';

class FolhaPag extends StatelessWidget {
  final Map<String, dynamic>? funcionarioData;
  const FolhaPag({Key? key, required this.funcionarioData}) : super(key: key);

  void _onVoltarButtonPressed(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  double retornaValorLiquido(Map<String, dynamic> funcionario){
    double inss = funcionario['inss'];
    double salario = funcionario['salario'];
    double planoSaude = funcionario['plano_DE_SAUDE'];
    double vr = funcionario['vale_refeicao'];
    double vt = funcionario['vale_transporte'];
    double va = funcionario['vale_alimentacao'];

    double descontoINSS = (salario * (inss / 100));

    return (salario - descontoINSS) - planoSaude + vr + vt + va;

  }

  double retornaTotalDescontado(Map<String, dynamic> funcionario){
    double inss = funcionario['inss'];
    double salario = funcionario['salario'];

    return(salario * (inss / 100));


  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? funcionarioInfos = funcionarioData;
    double totalLiquido = funcionarioInfos != null ? retornaValorLiquido(funcionarioInfos) : 0.0;
    double valorDescontado = funcionarioInfos != null ? retornaTotalDescontado(funcionarioInfos): 0.0;

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
                      'R\$ ${funcionarioInfos?['salario']?.toStringAsFixed(2) ?? "0.00"}',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const Text(
                      'Valor de Proventos:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ ${(funcionarioInfos?['vale_refeicao'] + funcionarioInfos?['vale_alimentacao'] + funcionarioInfos?['vale_transporte'])?.toStringAsFixed(2) ?? "0.00"}',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const Text(
                      'Valor Descontos:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ ${valorDescontado.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const Text(
                      'Valor Líquido:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ ${totalLiquido.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12.0),

                    const Text(
                      'Taxas: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      'INSS: ${funcionarioInfos?['inss']?.toStringAsFixed(2) ?? "0.00"}%',
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),

                    // Adicione informações adicionais aqui, se necessário
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
