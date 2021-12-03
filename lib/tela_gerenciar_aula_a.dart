import 'package:flutter/material.dart';
import 'components/buttom.dart';

class GerAulaA extends StatefulWidget {
  const GerAulaA({Key? key}) : super(key: key);

  @override
  _GerAulaAState createState() => _GerAulaAState();
}

class _GerAulaAState extends State<GerAulaA> {
  var banco = [];
  var cartao = [];
  var apelido = [];

  @override
  void initState() {
    banco.add('Banco do Brasil');
    cartao.add('Cartão Final: 4514');
    apelido.add('Apelido do Cartão');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gerenciar Aulas'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: cartao.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: ListTile(
                          leading: Icon(
                            Icons.person,
                            size: 50,
                          ),
                          title: Text('Interpretação de Texto - 21/10/2021',
                              style: Theme.of(context).textTheme.headline6),
                          subtitle: Text('14:00 - 16:00',
                              style: Theme.of(context).textTheme.headline6),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                color: Colors.blue[500],
                                icon: Icon(Icons.cancel),
                                onPressed: () {
                                  setState(() {
                                    cartao.removeAt(index);
                                  });
                                },
                              )
                            ],
                          )),
                    );
                  },
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                botao('Pagar Aula', 'pag'),
              ],
            ),
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
                'Nome do Aluno',
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
                Navigator.pushNamed(context, 'aluno');
              },
            ),
            ListTile(
              title: const Text(
                'Consultar Aulas',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'consultaaula');
              },
            ),
            ListTile(
              title: const Text(
                'Formas de Pagamento',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'cadastropag');
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
