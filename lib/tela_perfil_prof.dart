import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Professor extends StatelessWidget {
  const Professor({Key? key}) : super(key: key);

  Widget infomenu(dados) {
    String nome = dados.data()['nome'];
    String email = dados.data()['email'];

    return Column(
      children: [
        Text(nome, style: TextStyle(fontSize: 20, color: Colors.white)),
        Text(email, style: TextStyle(fontSize: 18, color: Colors.white))
      ],
    );
  }
 
  Widget infoprincipal(dados) {
    String nome = dados.data()['nome'];
    String email = dados.data()['email'];
    String cpf = dados.data()['cpf'];

    return Column(
      children: [
        Container(
          width: 300,
          child: Card(
            elevation: 10,
            child: ListTile(
                title: Text('Nome: ',
                    style: TextStyle(fontSize: 14, color: Colors.blue[500])),
                subtitle: Text(nome,
                    style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
          ),
        ),
        Container(
          width: 300,
          child: Card(
            elevation: 10,
            child: ListTile(
                title: Text('E-mail: ',
                    style: TextStyle(fontSize: 14, color: Colors.blue[500])),
                subtitle: Text(email,
                    style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
          ),
        ),
        Container(
          width: 300,
          child: Card(
            elevation: 10,
            child: ListTile(
                title: Text('CPF: ',
                    style: TextStyle(fontSize: 14, color: Colors.blue[500])),
                subtitle: Text(cpf,
                    style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
          ),
        ),
      ],
    );
  }

  Widget infoadicional(dados) {
    String cep = dados.data()['cep'];
    String logradouro = dados.data()['logradouro'];
    String numero = dados.data()['numero'];
    String complemento = dados.data()['complemento'];
    String cidade = dados.data()['cidade'];
    String uf = dados.data()['uf'];
    String formacao = dados.data()['formacao'];

    return Column(
      children: [
        Card(
          elevation: 10,
          child: ListTile(
              title: Text('CEP: ',
                  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
              subtitle: Text(cep,
                  style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
        ),
        Card(
          elevation: 10,
          child: ListTile(
              title: Text('Logradouro: ',
                  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
              subtitle: Text(logradouro,
                  style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
        ),
        Card(
          elevation: 10,
          child: ListTile(
              title: Text('Número: ',
                  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
              subtitle: Text(numero,
                  style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
        ),
        Card(
          elevation: 10,
          child: ListTile(
              title: Text('Complemento: ',
                  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
              subtitle: Text(complemento,
                  style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
        ),
        Card(
          elevation: 10,
          child: ListTile(
              title: Text('Cidade: ',
                  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
              subtitle: Text(cidade,
                  style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
        ),
        Card(
          elevation: 10,
          child: ListTile(
              title: Text('UF: ',
                  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
              subtitle: Text(uf,
                  style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
        ),
        Card(
          elevation: 10,
          child: ListTile(
              title: Text('Formação: ',
                  style: TextStyle(fontSize: 14, color: Colors.blue[500])),
              subtitle: Text(formacao,
                  style: TextStyle(fontSize: 18, color: Colors.blue[500]))),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var email = FirebaseAuth.instance.currentUser?.email;

    return Scaffold(
      appBar: AppBar(title: Text('Meu Perfil Professor'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      return infoprincipal(dados.docs[0]);
                  }
                },
              )),
              Container(
                  margin: EdgeInsets.only(right: 20),
                  color: Colors.white,
                  width: 200,
                  height: 200,
                  child: Image.asset('lib/imagens/userf.png'))
            ],
          ),
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
                  return infoadicional(dados.docs[0]);
              }
            },
          ))
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
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
                        return infomenu(dados.docs[0]);
                    }
                  },
                )),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'atualcadp');
        },
        child: Icon(Icons.update),
        backgroundColor: Colors.blue[500],
      ),
    );
  }
}
