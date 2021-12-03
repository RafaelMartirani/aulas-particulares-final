import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'components/buttom.dart';

class telaConta extends StatefulWidget {
  const telaConta({Key? key}) : super(key: key);

  @override
  _telaContaState createState() => _telaContaState();
}

class _telaContaState extends State<telaConta> {
  Widget cadconta(dados) {
    String agencia = dados.data()['agencia'];
    String conta = dados.data()['conta'];

    return Container(
        child: Card(
      elevation: 10,
      child: ListTile(
          leading: Icon(
            Icons.person,
            size: 50, color: Colors.blue[500]
          ),
          title: Text(agencia, style: TextStyle(fontSize: 14, color: Colors.blue[500])),
          subtitle: Text(conta, style: TextStyle(fontSize: 18, color: Colors.blue[500])),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: Colors.blue[500],
                icon: Icon(Icons.cancel),
                onPressed: () {
                  FirebaseFirestore.instance
                      .collection('pagamentos')
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

    return Scaffold(
      appBar: AppBar(title: Text('Gerenciar Contas'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                    child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('pagamentos').snapshots(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const Center(child: CircularProgressIndicator());

                  default:
                    final dados = snapshot.requireData;
                    return ListView.builder(
                        itemCount: dados.size,
                        itemBuilder: (context, index) {
                          return cadconta(dados.docs[index]);
                        });
                }
              },
            )),
            ),
          ],
        ),
      ),
    );
  }
}
