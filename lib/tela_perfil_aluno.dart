import 'package:flutter/material.dart';

class Aluno extends StatelessWidget {
  const Aluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meu Perfil Aluno'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 310,
                      child: Card(
                        elevation: 10,
                        child: ListTile(
                          title: Text('Nome: ',
                              style: Theme.of(context).textTheme.headline5),
                          subtitle: Text('Aluno',
                              style: Theme.of(context).textTheme.headline6),
                        ),
                      ),
                    ),
                    Container(
                      width: 310,
                      child: Card(
                        elevation: 10,
                        child: ListTile(
                          title: Text('E-mail: ',
                              style: Theme.of(context).textTheme.headline5),
                          subtitle: Text('aluno@gmail.com',
                              style: Theme.of(context).textTheme.headline6),
                        ),
                      ),
                    ),
                    Container(
                      width: 310,
                      child: Card(
                        elevation: 10,
                        child: ListTile(
                          title: Text('CPF: ',
                              style: Theme.of(context).textTheme.headline5),
                          subtitle: Text('222.222.222-22',
                              style: Theme.of(context).textTheme.headline6),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    color: Colors.white,
                    width: 200,
                    height: 200,
                    child: Image.asset('lib/imagens/userm.png'))
              ],
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title:
                    Text('CEP: ', style: Theme.of(context).textTheme.headline5),
                subtitle: Text('12054-65',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text('Logradouro: ',
                    style: Theme.of(context).textTheme.headline5),
                subtitle: Text('Rua Redenção',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text('Número: ',
                    style: Theme.of(context).textTheme.headline5),
                subtitle:
                    Text('100', style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text('Complemento: ',
                    style: Theme.of(context).textTheme.headline5),
                subtitle:
                    Text('', style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title: Text('Cidade: ',
                    style: Theme.of(context).textTheme.headline5),
                subtitle: Text('Ribeirão Preto',
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                title:
                    Text('UF: ', style: Theme.of(context).textTheme.headline5),
                subtitle:
                    Text('SP', style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ],
        ),
      ),
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
                'Gerenciar Aulas',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'geraulaa');
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'atualcada');
        },
        child: Icon(Icons.update),
        backgroundColor: Colors.blue[500],
      ),
    );
  }
}
