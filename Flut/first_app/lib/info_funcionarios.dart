import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MinhasInf extends StatefulWidget {
  final Map<String, dynamic>? funcionarioData;

  const MinhasInf({Key? key, required this.funcionarioData}) : super(key: key);

  @override
  _MinhasInfState createState() => _MinhasInfState();
}

class _MinhasInfState extends State<MinhasInf> {
  late int codigoEmpresaFuncionario;
  Map<String, dynamic>? empresaData;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void _onVoltarButtonPressed(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  Future<void> fetchData() async {
    codigoEmpresaFuncionario = widget.funcionarioData?['codigo_empresa'] ?? 0;
    final response =
        await http.get(Uri.parse('http://10.0.2.2:8080/empresa/'));
    List<dynamic> empresas = json.decode(response.body);

    for (var empresa in empresas) {
      if (empresa['codigo_empresa'] == codigoEmpresaFuncionario) {
        empresaData = empresa;
        break;
      }
    }

    setState(() {}); // Atualiza o estado para reconstruir a interface com as novas informações da empresa
  }

  @override
  Widget build(BuildContext context) {
    String nomeFuncionario = widget.funcionarioData?['nome'] ?? '';
    int codigoFuncionario = widget.funcionarioData?['codigo_funcionario'] ?? 0;
    String cpf = widget.funcionarioData?['cpf'] ?? '';
    String cep = widget.funcionarioData?['cep'] ?? '';
    String rua = widget.funcionarioData?['rua'] ?? ''; // Corrigi para 'rua'
    String cidade = widget.funcionarioData?['cidade'] ?? '';
    String uf = widget.funcionarioData?['estado'] ?? '';
    int numero = widget.funcionarioData?['numero'] ?? 0;
    String telefone = widget.funcionarioData?['telefone'] ?? '';
    String rg = widget.funcionarioData?['rg'] ?? '';
    String email = widget.funcionarioData?['email'] ?? '';

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
                          'Minhas informações',
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
              SizedBox(
                width: double.infinity,
                height: 1200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 6,
                      top: 6.21,
                      child: SizedBox(
                        width: 349,
                        height: 500,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 7,
                              top: 0,
                              child: Text(
                                'Minhas informações:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                             Positioned(
                              left: 7,
                              top: 30,
                              child: Text(
                                'Nome: $nomeFuncionario',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.normal,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 7,
                              top: 60,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Código',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'CPF',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 7,
                              top: 85,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '$codigoFuncionario'.padLeft(4, '0'),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    cpf,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),
                            const Positioned(
                              left: 13,
                              top: 115,
                              width: 410,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'CEP:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Rua:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 13,
                              top: 135,
                              width: 400,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    cep,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    rua,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),
                           const Positioned(
                              left: 13,
                              top: 155,
                              width: 400,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Cidade:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'UF:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 13,
                              top: 175,
                              width: 382,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    cidade,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    uf,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                 const  SizedBox(width: 10),
                                ],
                              ),
                            ),
                           const  Positioned(
                              left: 13,
                              top: 195,
                              width: 400,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Número:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Telefone:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 13,
                              top: 215,
                              width: 435,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '$numero',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    telefone,
                                    style:  const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                 const  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            const Positioned(
                              left: 13,
                              top: 235,
                              width: 420,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'RG:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Email:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 13,
                              top: 255,
                              width: 460,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    rg,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    email,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                      const Positioned(
                        left: 6,
                        top: 300, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  'Informações da Empresa:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),

                      const Positioned(
                        left: 6,
                        top: 335, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  'Nome:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),
                      Positioned(
                        left: 6,
                        top: 360, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  '${empresaData?['nome'] ?? ''}',
                                  style: const  TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.normal,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),

                      const  Positioned(
                        left: 6,
                        top: 380, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  'CNPJ:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),
                         Positioned(
                        left: 6,
                        top: 400, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  '${empresaData?['cnpj'] ?? ''}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.normal,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),

                      const Positioned(
                        left: 6,
                        top: 420, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  'Email:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),
                         Positioned(
                        left: 6,
                        top: 440, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  '${empresaData?['email'] ?? ''}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.normal,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),
                      const Positioned(
                        left: 6,
                        top: 460,
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  'Responsavel:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),
                      Positioned(
                        left: 6,
                        top: 480, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  '${empresaData?['nome_responsavel']}',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.normal,
                                    height: 0,
                                  ),
                                ),
                              ),                   
                          ],                  
                        ))),
                         const Positioned(
                        left: 6,
                        top: 460, // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 349,
                          height: 500,
                          child: Stack(
                            children: [
                            
                              Positioned(
                                left: 7,
                                top: 0,
                                child: Text(
                                  'Responsavel:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                          ],
                        ))),
                      Positioned(
                        left: 6,
                        top: 550,
                        // Ajuste a posição conforme necessário
                        child: SizedBox(
                          width: 380,
                          height: 500,
                          child: Stack(
                            children: [
           
                           Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 40,),
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
                        ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}