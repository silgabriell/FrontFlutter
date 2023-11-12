// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers, avoid_unnecessary_containers

import 'package:first_app/ajuda_enviado.dart';
import 'package:flutter/material.dart';

class ConfirmacaoAjudaDialog {
  static Future<void> show(BuildContext context) async {
    void _Sim(BuildContext context) {
      {
        AjudaEnviadoDialog.show(context);
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
            height: 200,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(225, 239, 239, 1),
                  Color.fromRGBO(225, 239, 239, 1),
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

                const SizedBox(height: 30), // Espaço entre o CPF e os botões
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
                          backgroundColor: const Color(0xFFFF6767),
                          foregroundColor: const Color.fromARGB(235, 0, 0, 0),
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
                          backgroundColor: const Color(0xFF76AD5C),
                          foregroundColor: const Color.fromARGB(235, 0, 0, 0),
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
