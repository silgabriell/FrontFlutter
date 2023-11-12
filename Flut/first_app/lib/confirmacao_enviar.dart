// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers

import 'package:first_app/enviado.dart';
import 'package:flutter/material.dart';

class ConfirmacaoEnviarDialog {
  static Future<void> show(BuildContext context, cpf) async {
    void _Sim(BuildContext context) {
      {
        EnviadoDialog.show(context);
      }
    }

    void _Nao(BuildContext context) {
      Navigator.pop(context);
    }

    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(74, 229, 229, 0.992),
                  Color.fromRGBO(225, 239, 239, 0.593),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 35),
                const Text(
                  'ENVIAR?',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 25,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CPF:', // Seção CPF
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          color: Color(0xff000000),
                        ),
                      ),
                      Text(
                        cpf,
                        style: const TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25), // Espaço entre o CPF e os botões
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          _Nao(context);
                        }, // Botão "NÃO"
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1B1C1B),
                          foregroundColor: const Color(0xffdfae62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'NÃO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          _Sim(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1B1C1B),
                          foregroundColor: const Color(0xffdfae62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'SIM',
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
              ],
            ),
          ),
        );
      },
    );
  }
}
