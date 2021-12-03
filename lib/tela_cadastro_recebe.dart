import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class CadRecebe extends StatefulWidget {
  const CadRecebe({Key? key}) : super(key: key);

  @override
  _CadRecebeState createState() => _CadRecebeState();
}

class _CadRecebeState extends State<CadRecebe> {
  var txtAgenciaController = TextEditingController();
  var txtContaController = TextEditingController();
  var txtNomeTitController = TextEditingController();
  var txtCPFTitController = TextEditingController();
  var txtCEPTitController = TextEditingController();
  var txtLogradouroTitController = TextEditingController();
  var txtNumeroTitController = TextEditingController();
  var txtComplementoTitController = TextEditingController();
  var txtCidadeTitController = TextEditingController();
  var txtUFTitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    {
      return Scaffold(
        appBar:
            AppBar(title: Text('Cadastrar Conta Bancária'), centerTitle: true),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
            padding: EdgeInsets.all(30),
            child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      controller: txtAgenciaController,
                      style: Theme.of(context).textTheme.headline1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'Agência',
                        labelStyle: Theme.of(context).textTheme.headline1,
                        hintText: 'Digite sua agência',
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
                      controller: txtContaController,
                      style: Theme.of(context).textTheme.headline1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'Conta',
                        labelStyle: Theme.of(context).textTheme.headline1,
                        hintText:
                            'Digite o numero de sua conta (apenas números))',
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
                      controller: txtNomeTitController,
                      style: Theme.of(context).textTheme.headline1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'Nome',
                        labelStyle: Theme.of(context).textTheme.headline1,
                        hintText: 'Digite seu nome completo',
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
                      controller: txtCPFTitController,
                      style: Theme.of(context).textTheme.headline1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'CPF',
                        labelStyle: Theme.of(context).textTheme.headline1,
                        hintText: 'Digite seu CPF',
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
                      controller: txtCEPTitController,
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
                      controller: txtLogradouroTitController,
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
                      controller: txtNumeroTitController,
                      style: Theme.of(context).textTheme.headline1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'Número',
                        labelStyle: Theme.of(context).textTheme.headline1,
                        hintText: 'Digite o número da sua casa',
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
                      controller: txtComplementoTitController,
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
                      controller: txtCidadeTitController,
                      style: Theme.of(context).textTheme.headline1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'Cidade',
                        labelStyle: Theme.of(context).textTheme.headline1,
                        hintText: 'Digite sua Cidade',
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
                      controller: txtUFTitController,
                      style: Theme.of(context).textTheme.headline1,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        labelText: 'UF',
                        labelStyle: Theme.of(context).textTheme.headline1,
                        hintText: 'Digite seu Estado',
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
                    Container(
                      width: 250,
                      child: Column(
                        children: [
                          ElevatedButton(
                              child: Text('Cadastrar Conta'),
                              onPressed: () {
                                pagar(
                                  txtAgenciaController.text,
                                  txtContaController.text,
                                  txtNomeTitController.text,
                                  txtCPFTitController.text,
                                  txtCEPTitController.text,
                                  txtLogradouroTitController.text,
                                  txtNumeroTitController.text,
                                  txtComplementoTitController.text,
                                  txtCidadeTitController.text,
                                  txtUFTitController.text,
                                );
                                Navigator.pushNamed(context, 'gercont');
                              }),
                          Padding(padding: EdgeInsets.all(10)),
                          ElevatedButton(
                              child: Text('Gerenciar Contas'),
                              onPressed: () {
                                Navigator.pushNamed(context, 'gercont');
                              })
                        ],
                      ),
                    )
                  ],
                ))),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Nome do Professor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: const Text(
                  'Meu Perfil',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'prof');
                },
              ),
              ListTile(
                title: const Text(
                  'Publicar Aula',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'cadaula');
                },
              ),
              ListTile(
                title: const Text(
                  'Gerenciar Aulas',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'geraulap');
                },
              ),
              ListTile(
                title: const Text(
                  'Sobre',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'sobre');
                },
              ),
              ListTile(
                title: const Text(
                  'Sair',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
      );
    }
  }

  void pagar(agencia, conta, nome, cpf, cep, logradouro, numero, complemento,
      cidade, uf) {
    FirebaseFirestore.instance.collection('pagamentos').add({
      'agencia': agencia,
      'conta': conta,
      'nome': nome,
      'cpf': cpf,
      'cep': cep,
      'logradouro': logradouro,
      'numero': numero,
      'complemento': complemento,
      'cidade': cidade,
      'uf': uf,
    });
  }
}
