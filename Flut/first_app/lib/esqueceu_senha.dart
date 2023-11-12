// ignore_for_file: no_leading_underscores_for_local_identifiers, non_constant_identifier_names

import 'package:first_app/confirmacao_enviar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EsqueceuSuaSenhaDialog {
  String _cpfErrorMessage = ''; // Mensagem de erro para o CPF

  Future<void> show(BuildContext context) async {
    TextEditingController _cpfController = TextEditingController();

    bool validarCPF(String cpf) {
      // Remova caracteres não numéricos
      cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

      // Verifica se o CPF tem 11 dígitos
      if (cpf.length != 11) {
        return false;
      }

      // Calcula o primeiro dígito verificador
      int soma = 0;
      for (int i = 0; i < 9; i++) {
        soma += int.parse(cpf[i]) * (10 - i);
      }
      int primeiroDigito = 11 - (soma % 11);

      // Se o primeiro dígito for maior ou igual a 10, considera 0
      if (primeiroDigito >= 10) {
        primeiroDigito = 0;
      }

      // Calcula o segundo dígito verificador
      soma = 0;
      for (int i = 0; i < 10; i++) {
        soma += int.parse(cpf[i]) * (11 - i);
      }
      int segundoDigito = 11 - (soma % 11);

      // Se o segundo dígito for maior ou igual a 10, considera 0
      if (segundoDigito >= 10) {
        segundoDigito = 0;
      }

      // Verifica se os dígitos verificadores são iguais aos dígitos reais
      if (cpf[9] == primeiroDigito.toString() &&
          cpf[10] == segundoDigito.toString()) {
        return true;
      } else {
        _cpfErrorMessage = 'CPF inválido. Verifique os dígitos.';
        return false;
      }
    }

    void _voltar(BuildContext context) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    }

    void _enviar(BuildContext context) {
      String cpf = _cpfController.text.trim();

      if (cpf.isNotEmpty && cpf.length == 11 && validarCPF(cpf)) {
        ConfirmacaoEnviarDialog.show(context,
            cpf); // You should create an instance of ConfirmacaoEnviarDialog before calling show.
      } else {
        // Mostrar mensagem de erro se o CPF for inválido
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Erro'),
              content: Text(_cpfErrorMessage),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }

    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 35),
                const Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 23),
                Container(
                  width: 260,
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    'Insira seu CPF:',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 260,
                  height: 40,
                  child: TextField(
                    controller: _cpfController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(11),
                    ],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      hintText: 'CPF',
                      errorText:
                          _cpfErrorMessage.isNotEmpty ? _cpfErrorMessage : null,
                      errorStyle: const TextStyle(
                        color: Colors
                            .red, // Defina a cor vermelha para o erro aqui
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _voltar(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1B1C1B),
                        foregroundColor: const Color(0xffdfae62),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(130, 40),
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
                    ElevatedButton(
                      onPressed: () {
                        _enviar(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1B1C1B),
                        foregroundColor: const Color(0xffdfae62),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(130, 40),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
