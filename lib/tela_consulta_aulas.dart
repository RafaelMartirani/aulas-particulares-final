import 'package:flutter/material.dart';

class ConsultaAula extends StatelessWidget {
  const ConsultaAula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aulas Disponíveis'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'consultaaula');
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'agendamento');
                  },
                  leading: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  title: Text('Português',
                      style: Theme.of(context).textTheme.headline5),
                  subtitle: Text('Interpretação de Texto',
                      style: Theme.of(context).textTheme.headline6),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('21/10/2021',
                          style: Theme.of(context).textTheme.headline5),
                      Text('14:00 - 16:00',
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  )),
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
    );
  }
}
