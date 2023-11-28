import 'package:flutter/material.dart';
import 'dart:math';

class Beneficio extends StatelessWidget {
  final Map<String, dynamic>? funcionarioData;

  const Beneficio({Key? key, required this.funcionarioData}) : super(key: key);

  String proventos(Map<String, dynamic>? funcionarioData) {
    return '${funcionarioData?['vale_refeicao']}/${funcionarioData?['vale_alimentacao']}/${funcionarioData?['vale_transporte']}/';
  }

  String formatarDataAniversario() {
    int dia = Random().nextInt(28) + 1;

    List<String> meses = [
      'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
      'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
    ];

    String mes = meses[Random().nextInt(meses.length)];

    return '$dia de $mes';
  }

    void _onVoltarButtonPressed(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? funcionarioInfos = funcionarioData;
    double planoDeSaude = funcionarioInfos != null ? funcionarioInfos['plano_DE_SAUDE'] : 0.00;
    String beneficios = funcionarioInfos != null ? proventos(funcionarioInfos) : '';

    String dataAniversario = formatarDataAniversario();

    return Scaffold(
      body: SingleChildScrollView(
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
                        'Benefícios',
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
            Positioned(
              left: 0,
              top: 495,
              child: SizedBox(
                width: 360,
                height: 110,
                child: Stack(
                  children: [
                    Positioned(
                      left: 6,
                      top: 6.21,
                      child: SizedBox(
                        width: 349,
                        height: 96.79,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 7,
                              top: 0,
                              child: Text(
                                'Convênios:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
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
                                'Plano de Saúde: valor descontado: $planoDeSaude',
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 380,
              child: SizedBox(
                width: 360,
                height: 110,
                child: Stack(
                  children: [
                    Positioned(
                      left: 6,
                      top: 6.21,
                      child: SizedBox(
                        width: 530,
                        height: 96.79,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 7,
                              top: 0,
                              child: Text(
                                'VR/VA/VT:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
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
                                'Valores: $beneficios',
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 150,
              child: SizedBox(
                width: 360,
                height: 110,
                child: Stack(
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}