import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class CadastroPag extends StatefulWidget {
  const CadastroPag({Key? key}) : super(key: key);

  @override
  _CadastroPagState createState() => _CadastroPagState();
}

class _CadastroPagState extends State<CadastroPag> {
  int grupo = 1;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text('Meios de Pagamento'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
          padding: EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: '1',
                          groupValue: grupo,
                          onChanged: (T) {
                            print(T);
                            setState(() {
                              //grupo = T;                              
                            });
                          },
                        ),
                        Text('Débito',
                            style: Theme.of(context).textTheme.headline1),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: '2',
                          groupValue: grupo,
                          onChanged: (T) {
                            print(T);
                            setState(() {
                              //grupo = T;
                            });
                          },
                        ),
                        Text('Crédito',
                            style: Theme.of(context).textTheme.headline1),
                      ],
                    ),
                  ],
                ),
                campoTexto('Número do Cartão', 'Digite o número do seu cartão'),
                campoTexto('Validade', 'Digite a validade do cartão'),
                campoTexto('CVV', 'Digite o código CVV do cartão'),
                campoTexto(
                    'Nome do titular', 'Digite o nome do titular do cartão'),
                campoTexto(
                    'CPF do titular', 'Digite o CPF do titular do cartão'),
                campoTexto('Apelido', 'Digite um apelido para este cartão'),
                botao('Cadastrar Cartão', 'gercart'),
                botao('Gerenciar Cartões', 'gercart')
              ],
            ),
          )),
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
