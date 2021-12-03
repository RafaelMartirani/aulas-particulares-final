import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class AtualCadP extends StatefulWidget {
  const AtualCadP({Key? key}) : super(key: key);

  @override
  _AtualCadPState createState() => _AtualCadPState();
}

class _AtualCadPState extends State<AtualCadP> {
  var txtCEPController = TextEditingController();
  var txtLogradouroController = TextEditingController();
  var txtNumeroController = TextEditingController();
  var txtComplementoController = TextEditingController();
  var txtCidadeController = TextEditingController();
  var txtUFController = TextEditingController();
  var txtFormacao = TextEditingController();

  Widget atualcada(dados) {
    String cep = dados.data()['cep'];
    String logradouro = dados.data()['logradouro'];
    String numero = dados.data()['numero'];
    String complemento = dados.data()['complemento'];
    String cidade = dados.data()['cidade'];
    String uf = dados.data()['uf'];
    String formacao = dados.data()['formacao'];

    txtCEPController.text = cep;
    txtLogradouroController.text = logradouro;
    txtNumeroController.text = numero;
    txtComplementoController.text = complemento;
    txtCidadeController.text = cidade;
    txtUFController.text = uf;
    txtFormacao.text = formacao;

    return Column(
      children: [
        TextFormField(
          controller: txtCEPController,
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'CEP',
            labelStyle: Theme.of(context).textTheme.headline1,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          controller: txtLogradouroController,
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'Logradouro',
            labelStyle: Theme.of(context).textTheme.headline1,
            hintStyle: Theme.of(context).textTheme.headline2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          controller: txtNumeroController,
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'Número',
            labelStyle: Theme.of(context).textTheme.headline1,
            hintStyle: Theme.of(context).textTheme.headline2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          controller: txtComplementoController,
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'Complemento',
            labelStyle: Theme.of(context).textTheme.headline1,
            hintStyle: Theme.of(context).textTheme.headline2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          controller: txtCidadeController,
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'Cidade',
            labelStyle: Theme.of(context).textTheme.headline1,
            hintStyle: Theme.of(context).textTheme.headline2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          controller: txtUFController,
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'UF',
            labelStyle: Theme.of(context).textTheme.headline1,
            hintStyle: Theme.of(context).textTheme.headline2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextFormField(
          controller: txtFormacao,
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: 'Formação',
            labelStyle: Theme.of(context).textTheme.headline1,
            hintStyle: Theme.of(context).textTheme.headline2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(40)),
        Container(
            width: 250,
            height: 70,
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
                child: Text('Atualizar Cadastro'),
                onPressed: () {
                  FirebaseFirestore.instance
                      .collection('usuario')
                      .doc(dados.id)
                      .update({
                    'cep': txtCEPController.text,
                    'logradouro': txtLogradouroController.text,
                    'numero': txtNumeroController.text,
                    'complemento': txtComplementoController.text,
                    'cidade': txtCidadeController.text,
                    'uf': txtUFController.text,
                    'formacao': txtFormacao.text,
                  });
                  exibirMensagem('Cadastro atualizado com sucesso!');
                  Navigator.pushNamed(context, 'prof');
                }))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var email = FirebaseAuth.instance.currentUser?.email;

    return Scaffold(
        appBar: AppBar(
          title: Text('Atualizar Cadastro'),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(50),
            child: ListView(
              children: [
                Container(
                    child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('usuario')
                      .where('email', isEqualTo: email)
                      .snapshots(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return const Center(child: CircularProgressIndicator());

                      default:
                        final dados = snapshot.requireData;
                        return atualcada(dados.docs[0]);
                    }
                  },
                )),
              ],
            )),
        backgroundColor: Theme.of(context).backgroundColor);
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
