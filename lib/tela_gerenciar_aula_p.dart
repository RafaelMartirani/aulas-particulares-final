import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'components/buttom.dart';

class GerAulaP extends StatefulWidget {
  const GerAulaP({Key? key}) : super(key: key);

  @override
  _GerAulaPState createState() => _GerAulaPState();
}

class _GerAulaPState extends State<GerAulaP> {

  Widget pubaula(dados) {
    String materia = dados.data()['materia'];
    String data = dados.data()['data'];

    return Container(
        child: Card(
      elevation: 10,
      child: ListTile(
          leading: Icon(
            Icons.person,
            size: 50, color: Colors.blue[500],
          ),
          title: Text(materia,  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
          subtitle: Text(data,  style: TextStyle(fontSize: 18, color: Colors.blue[500])),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: Colors.blue[500],
                icon: Icon(Icons.cancel, color: Colors.blue[500]),
                onPressed: () {
                  FirebaseFirestore.instance
                      .collection('aulas')
                      .doc(dados.id)
                      .delete();
                },
              )
            ],
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    var email = FirebaseAuth.instance.currentUser?.email;

    return Scaffold(
      appBar: AppBar(title: Text('Gerenciar Aulas'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(children: [
            Expanded(
                child: Container(
                    child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('aulas').snapshots(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const Center(child: CircularProgressIndicator());

                  default:
                    final dados = snapshot.requireData;
                    return ListView.builder(
                        itemCount: dados.size,
                        itemBuilder: (context, index) {
                          return pubaula(dados.docs[index]);
                        });
                }
              },
            ))),
          ])),
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
}
