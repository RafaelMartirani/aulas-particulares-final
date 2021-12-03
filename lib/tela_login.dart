import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String titulo;

  const Login(this.titulo, {Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: Text('Aulas Particulares',
              style: Theme.of(context).textTheme.headline4),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 400,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent.shade200),
                      image: DecorationImage(
                          image: AssetImage('lib/imagens/login.png')),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    controller: txtEmail,
                    style: Theme.of(context).textTheme.headline1,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'E-mail',
                      labelStyle: Theme.of(context).textTheme.headline1,
                      hintText: 'Digite seu e-mail',
                      hintStyle: Theme.of(context).textTheme.headline2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).focusColor),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    controller: txtSenha,
                    obscureText: true,
                    style: Theme.of(context).textTheme.headline1,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Senha',
                      labelStyle: Theme.of(context).textTheme.headline1,
                      hintText: 'Digite sua Senha',
                      hintStyle: Theme.of(context).textTheme.headline2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Theme.of(context).focusColor),
                      ),
                    ),
                  ),
                  Container(
                      width: 250,
                      height: 70,
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                          child: Text('Entrar'),
                          onPressed: () {
                            setState(() {
                              isLoading = true;
                            });
                            login(txtEmail.text, txtSenha.text);
                          })),
                  Container(
                      width: 250,
                      height: 70,
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                          child: Text("Cadastrar"),
                          onPressed: () {
                            Navigator.pushNamed(context, 'cadastro');
                          }))
                ],
              ),
            )),
        backgroundColor: Theme.of(context).backgroundColor);
  }

  void login(email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((value) {
      Navigator.pushReplacementNamed(context, 'prof');
    }).catchError((erro) {
      if (erro.code == 'user-not-found') {
        exibirMensagem('ERRO: Usuário não encontrado.');
      } else if (erro.code == 'wrong-password') {
        exibirMensagem('ERRO: Senha incorreta.');
      } else if (erro.code == 'invalid-email') {
        exibirMensagem('ERRO: Email inválido.');
      } else {
        exibirMensagem('ERRO: ${erro.message}.');
      }
    });
  }

  void exibirMensagem(msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
