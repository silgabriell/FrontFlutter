// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:first_app/esqueceu_senha.dart';
import 'package:first_app/principal.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  String _cpfErrorMessage = ''; // Mensagem de erro para CPF

  bool validarCPF(String cpf) {
    // Remova caracteres não numéricos
    cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

    // Verifica se o CPF tem 11 dígitos
    if (cpf.length != 11) {
      setState(() {
        _cpfErrorMessage = 'CPF deve conter 11 dígitos.';
      });
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
      setState(() {
        _cpfErrorMessage = ''; // CPF válido, limpa a mensagem de erro
      });
      return true;
    } else {
      setState(() {
        _cpfErrorMessage = 'CPF inválido. Verifique os dígitos.';
      });
      return false;
    }
  }

  void _login() {
    String cpf = _usernameController.text.trim();
    if (cpf.isNotEmpty && cpf.length == 11 && validarCPF(cpf)) {
      String username = _usernameController.text;
      String password = _passwordController.text;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Principal(),
        ),
      );

      print('Username: $username');
      print('Password: $password');
    }
  }

  void _esqueceuSenhaPressed() {
    EsqueceuSuaSenhaDialog dialog =
        EsqueceuSuaSenhaDialog(); // Crie uma instância da classe
    dialog.show(context); // Chame o método show na instância
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(74, 229, 229, 0.992),
                Color.fromRGBO(225, 239, 239, 0.593),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 146,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200,
                    ),
                  ),
                  const Text(
                    'Hermes S.E',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Metal',
                      color: Color.fromARGB(255, 11, 11, 11),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: _usernameController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 11,
                    decoration: InputDecoration(
                      labelText: 'CPF:',
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      errorText:
                          _cpfErrorMessage.isNotEmpty ? _cpfErrorMessage : null,
                      errorStyle: const TextStyle(
                        color: Colors
                            .red, // Defina a cor vermelha para o erro aqui
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      suffixIcon: TextButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Text(
                          _obscureText ? 'Mostrar' : 'Ocultar',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 33, 65, 243),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed:
                          _esqueceuSenhaPressed, // Chama a função ao clicar
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                          height: 1.25,
                          fontSize: 20,
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _login, // Chama a função ao clicar
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 27, 28, 27),
                      foregroundColor: const Color(0xffdfae62),
                      minimumSize: const Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        height: 1.25,
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
