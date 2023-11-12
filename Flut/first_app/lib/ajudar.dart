import 'package:first_app/confirmacao_ajuda.dart';
import 'package:first_app/principal.dart';
import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({Key? key}) : super(key: key);

  void handleVoltarButtonPress(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Principal()),
    );
  }

  void handleAnexarButtonPress() {}

  void handleEnviarButtonPress(BuildContext context) {
    ConfirmacaoAjudaDialog.show(context);
  }

  @override
  Widget build(BuildContext context) {
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
                        'Ajuda',
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
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: double.infinity,
              height: 0,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0, 4),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Insira seu nome completo:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextField(), // Campo de nome
                  const SizedBox(height: 16),
                  const Text(
                    'Insira seu E-Mail:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextField(), // Campo de E-Mail
                  const SizedBox(height: 16),
                  const Text(
                    'Insira sua mensagem:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextField(maxLines: 5), // Campo de mensagem
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: handleAnexarButtonPress,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE3E3FF),
                          foregroundColor: const Color(0xFF212157),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(150, 48),
                          elevation: 2,
                        ),
                        child: const Text(
                          'ANEXAR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          handleEnviarButtonPress(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE3E3FF),
                          foregroundColor: const Color(0xFF212157),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: const Size(150, 48),
                          elevation: 2,
                        ),
                        child: const Text(
                          'ENVIAR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        handleVoltarButtonPress(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3E3FF),
                        foregroundColor: const Color(0xFF212157),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
