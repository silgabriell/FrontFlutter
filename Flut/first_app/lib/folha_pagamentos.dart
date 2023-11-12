import 'package:flutter/material.dart';

class FolhaPag extends StatelessWidget {
  const FolhaPag({Key? key}) : super(key: key);

  void _onVoltarButtonPressed(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
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
                                'Pedro\nHermes Co.',
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
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 85),
                width: double.infinity,
                height: 365,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.fromLTRB(25, 17.14, 14.17, 12.89),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffefefef),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.fromLTRB(0, 0, 220.17, 0.75),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 4.5),
                                      child: const Text(
                                        '03/2023',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          height: 1.25,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Center(
                                    child: Text(
                                      'Mensal:',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        height: 1.25,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 39.67,
                              height: 37.97,
                              child: Image.asset(
                                'assets/images/direita.png',
                                width: 39.67,
                                height: 37.97,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffefefef),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffefefef),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffefefef),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 68,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffefefef),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
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
