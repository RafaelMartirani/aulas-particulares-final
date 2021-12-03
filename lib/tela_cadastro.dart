import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var txtNomeController = TextEditingController();
  var txtCPFController = TextEditingController();
  var txtEmailController = TextEditingController();
  var txtSenhaController = TextEditingController();
  var txtCEPController = TextEditingController();
  var txtLogradouroController = TextEditingController();
  var txtNumeroController = TextEditingController();
  var txtComplementoController = TextEditingController();
  var txtCidadeController = TextEditingController();
  var txtUFController = TextEditingController();
  var txtFormacao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var email = FirebaseAuth.instance.currentUser?.email;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue.shade500;
      }
      return Colors.blue.shade500;
    }

    var formKey = GlobalKey<FormState>();
    bool isChecked = false;

    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro'),
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtNomeController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'Nome',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Digite seu nome Completo',
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
                        controller: txtCPFController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'CPF',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Digite seu CPF (Apenas números)',
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
                        controller: txtEmailController,
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
                        controller: txtSenhaController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'Senha',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Escolha sua senha (Mínimo 6 caracteres)',
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
                        controller: txtCEPController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'CEP',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Digite seu CEP',
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
                        controller: txtLogradouroController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'Logradouro',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Digite seu endereço',
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
                        controller: txtNumeroController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'Número',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Digite o numero da casa',
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
                        controller: txtComplementoController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'Complemento',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Ap, Bloco, Referencia',
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
                        controller: txtCidadeController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'Cidade',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Digite sua cidade',
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
                        controller: txtUFController,
                        style: Theme.of(context).textTheme.headline1,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: 'UF',
                          labelStyle: Theme.of(context).textTheme.headline1,
                          hintText: 'Digite seu estado',
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
                        margin: EdgeInsets.only(bottom: 20),
                        width: 150,
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.photo,
                                  color: Colors.blue[500],
                                ),
                              ),
                              Text(
                                'Anexar Foto',
                                style: TextStyle(color: Colors.blue[500]),
                              )
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                          content: Container(
                                              height: 120,
                                              child: Column(children: [
                                                TextFormField(
                                                  controller: txtFormacao,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline1,
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white,
                                                    labelText: 'Formação',
                                                    labelStyle:
                                                        Theme.of(context)
                                                            .textTheme
                                                            .headline1,
                                                    hintText:
                                                        'Digite ssua formação',
                                                    hintStyle: Theme.of(context)
                                                        .textTheme
                                                        .headline2,
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      borderSide: BorderSide(
                                                          color:
                                                              Theme.of(context)
                                                                  .focusColor),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                    padding:
                                                        EdgeInsets.all(10)),
                                                ElevatedButton(
                                                    child: Text('Salvar'),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    })
                                              ])));
                                    });
                              });
                            },
                          ),
                          Text(
                            'Sou Professor',
                            style: TextStyle(color: Colors.blue[500]),
                          )
                        ],
                      ),
                      Container(
                          width: 250,
                          height: 70,
                          padding: EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                              child: Text('Finalizar Cadastro'),
                              onPressed: () {
                                cadastrar(
                                    txtEmailController.text,
                                    txtSenhaController.text,
                                    txtNomeController.text,
                                    txtCPFController.text,
                                    txtCEPController.text,
                                    txtLogradouroController.text,
                                    txtNumeroController.text,
                                    txtComplementoController.text,
                                    txtCidadeController.text,
                                    txtUFController.text,
                                    txtFormacao.text);
                              }))
                    ],
                  ),
                )
              ],
            )),
        backgroundColor: Theme.of(context).backgroundColor);
  }

  void cadastrar(email, senha, nome, cpf, cep, logradouro, numero, complemento,
      cidade, uf, formacao) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((value) {
      FirebaseFirestore.instance.collection('usuario').add({
        'nome': nome,
        'email': email,
        'senha': senha,
        'cpf': cpf,
        'cep': cep,
        'logradouro': logradouro,
        'numero': numero,
        'complemento': complemento,
        'cidade': cidade,
        'uf': uf,
        'formacao': formacao
      });

      if (formacao == '') {
        Navigator.pushReplacementNamed(context, 'aluno');
      } else {
        Navigator.pushReplacementNamed(context, 'prof');
      }
    }).catchError((error) {
      if (error.code == 'weak-password') {
        exibirMensagem('ERRO: A senha deve conter pelo menos 6 caracteres');
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
