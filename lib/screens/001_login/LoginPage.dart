import 'package:flutter/material.dart';
import 'package:untitled/screens/others/ClienteCadastroPage.dart';

import '../002_main/TelaPrincipal.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isUserValid = false;
  bool isPasswordValid = false;
  void _validateFields() {
    setState(() {
      isUserValid = userController.text.isNotEmpty;
      isPasswordValid = passwordController.text.isNotEmpty;
      validarSenhaDigitada();
    });
  }


  void validarSenhaDigitada() {
    if (isUserValid && isPasswordValid) {
      // Campos válidos, fazer a lógica de autenticação aqui
      print('Campos válidos');
      // Chamar a página de cadastro do cliente
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TelaPrincipal()),
      );
    } else {
      // Campos inválidos, exibir mensagem de erro ou tomar a ação necessária
      print('Campos inválidos');
    }
  }


  void _pular() {
    setState(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CadastroClientePage()),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userController,
              decoration: InputDecoration(
                labelText: 'Usuário',
                errorText: isUserValid ? null : 'Campo obrigatório',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                errorText: isPasswordValid ? null : 'Campo obrigatório',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _validateFields,
              child: Text('Entrar'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _pular,
              child: Text('outra tela'),
            ),
          ],
        ),
      ),
    );

  }
}