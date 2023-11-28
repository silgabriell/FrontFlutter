import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:first_app/esqueceu_senha.dart';
import 'package:first_app/principal.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  String _cpfErrorMessage = '';
  String _loginErrorMessage = ''; // Adiciona esta variável para armazenar a mensagem de erro de login

  bool validarLogin(String login) {
    // Você pode adicionar regras de validação específicas do login aqui
    // Neste exemplo, estou permitindo qualquer coisa que não esteja vazia
    return login.isNotEmpty;
  }

  Future<void> _login(BuildContext context) async {
    String login = _usernameController.text.trim();
    if (login.isNotEmpty && validarLogin(login)) {
      try {
        final responseUser =
            await http.get(Uri.parse('http://10.0.2.2:8080/usuarios/'));
        final responseFunc =
            await http.get(Uri.parse('http://10.0.2.2:8080/funcionario/'));

        if (responseUser.statusCode == 200) {
          List<dynamic> usuarios = json.decode(responseUser.body);
          List<dynamic> funcionarios = json.decode(responseFunc.body);
          bool credenciaisValidas = false;
          Map<String, dynamic>? funcionarioData;

          var codigoUsuario;

          for (var usuario in usuarios) {
            if (usuario['login'] == _usernameController.text.trim() &&
                usuario['login'] == _passwordController.text.trim()) {
              credenciaisValidas = true;
              codigoUsuario = usuario['codUsuario'];
              break;
            }
          }

          for (var funcionario in funcionarios) {
            print('codigo_funcionario: ${funcionario['codigo_funcionario']}');
            print('nome: ${funcionario['nome']}');
            print('codigo_usuairio: ${funcionario['codUsuario']}');

            if (funcionario['codUsuario'] == codigoUsuario) {
              funcionarioData = funcionario;
              break;
            }
          }

          if (credenciaisValidas && funcionarioData != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Principal(funcionarioData: funcionarioData),
              ),
            );
          } else {
            // Exibe uma mensagem de erro para credenciais inválidas
            setState(() {
              _loginErrorMessage = 'Credenciais inválidas';
            });
          }
        } else {
          print('Erro na solicitação: ${responseUser.statusCode}');
        }
      } catch (error) {
        print('Erro na solicitação: $error');
      }
    }
  }

  void _esqueceuSenhaPressed() {
    EsqueceuSuaSenhaDialog dialog = EsqueceuSuaSenhaDialog();
    dialog.show(context);
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
                    keyboardType: TextInputType.text, // Permitir letras e números
                    // Remova o inputFormatters para permitir letras
                    // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    // maxLength: 11, // Remova esta restrição
                    decoration: InputDecoration(
                      labelText: 'Login:', // Altere para 'Login'
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        fontFamily: 'Quicksand',
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      errorText:
                          _cpfErrorMessage.isNotEmpty ? _cpfErrorMessage : null,
                      errorStyle: const TextStyle(
                        color: Colors.red,
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
                      onPressed: _esqueceuSenhaPressed,
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: const Text(
                        '',
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
                    onPressed: () => _login(context),
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
                  if (_loginErrorMessage.isNotEmpty) // Exibe a mensagem de erro se houver uma
                    Text(
                      _loginErrorMessage,
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 16.0,
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