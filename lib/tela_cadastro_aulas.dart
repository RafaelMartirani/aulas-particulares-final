import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class CadastroAula extends StatefulWidget {
  const CadastroAula({Key? key}) : super(key: key);

  @override
  _CadastroAulaState createState() => _CadastroAulaState();
}

class _CadastroAulaState extends State<CadastroAula> {
  var txtMateriaController = TextEditingController();
  var txtConteudoController = TextEditingController();
  var txtDataController = TextEditingController();
  var txtHoraController = TextEditingController();
  var txtValorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text('Publicar Aula'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
          padding: EdgeInsets.all(30),
          child: Form(
              key: formKey,
              child: ListView(
                children: [
                  TextFormField(
                    controller: txtMateriaController,
                    style: Theme.of(context).textTheme.headline1,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Matéria',
                      labelStyle: Theme.of(context).textTheme.headline1,
                      hintText: 'Digite a matéria oferecida',
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
                    controller: txtConteudoController,
                    style: Theme.of(context).textTheme.headline1,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Conteudo',
                      labelStyle: Theme.of(context).textTheme.headline1,
                      hintText: 'Digite o conteúdo da matéria oferecida',
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
                    controller: txtDataController,
                    style: Theme.of(context).textTheme.headline1,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Data',
                      labelStyle: Theme.of(context).textTheme.headline1,
                      hintText: 'Digite a data da aula oferecida',
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
                    controller: txtHoraController,
                    style: Theme.of(context).textTheme.headline1,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Horário',
                      labelStyle: Theme.of(context).textTheme.headline1,
                      hintText: 'Digite a hora da aula oferecida',
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
                    controller: txtValorController,
                    style: Theme.of(context).textTheme.headline1,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Valor',
                      labelStyle: Theme.of(context).textTheme.headline1,
                      hintText: 'Digite o valor cobrado pela aula oferecida',
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
                            child: Text('Publicar Aula'),
                            onPressed: () {
                              publicar(
                                txtMateriaController.text,
                                txtConteudoController.text,
                                txtDataController.text,
                                txtHoraController.text,
                                txtValorController.text,
                              );
                              Navigator.pushNamed(context, 'geraulap');
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
                'Formas de Recebimento',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'cadrecebe');
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

  void publicar(materia, conteudo, data, hora, valor) {
    FirebaseFirestore.instance.collection('aulas').add({
      'materia': materia,
      'conteudo': conteudo,
      'data': data,
      'hora': hora,
      'valor': valor,
    });
  }
}
