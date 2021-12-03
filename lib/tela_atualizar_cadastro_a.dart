import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class AtualCadA extends StatefulWidget {
  const AtualCadA({Key? key}) : super(key: key);

  @override
  _AtualCadAState createState() => _AtualCadAState();
}

class _AtualCadAState extends State<AtualCadA> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    bool isChecked = false;

    return Scaffold(
        appBar: AppBar(
          title: Text('Atualizar Cadastro'),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(50),
            child: ListView(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      campoTexto('CEP', 'Digite CEP'),
                      campoTexto('Logradouro', 'Digite seu endereço'),
                      campoTexto('Número', 'Digite o número da casa'),
                      campoTexto('Complemento', 'Ap, Bloco, Referencia'),
                      campoTexto('Cidade', "Digite sua cidade"),
                      campoTexto('UF', 'Digite seu estado'),
                      botao('Atualizar', 'aluno'),
                    ],
                  ),
                )
              ],
            )),
        backgroundColor: Theme.of(context).backgroundColor);
  }
}
