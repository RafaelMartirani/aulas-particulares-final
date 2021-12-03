import 'package:flutter/material.dart';
import 'components/buttom.dart';

class Agendamento extends StatefulWidget {
  const Agendamento({Key? key}) : super(key: key);

  @override
  _AgendamentoState createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Agendar Aula'), centerTitle: true),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(children: [
              Card(
                elevation: 10,
                child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 50,
                    ),
                    title: Text('Português',
                        style: Theme.of(context).textTheme.headline5),
                    subtitle: Text('Interpretação de Texto',
                        style: Theme.of(context).textTheme.headline6),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('21/10/2021',
                            style: Theme.of(context).textTheme.headline5),
                        Text('14:00 - 16:00',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    )),
              ),
              Container(
                width: 600,
                height: 200,
                child: Card(
                    elevation: 10,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Nome: Professor',
                              style: Theme.of(context).textTheme.headline6),
                          Text('Avaliação: 5/5',
                              style: Theme.of(context).textTheme.headline6),
                          Text('Valor: R\$ 100,00',
                              style: Theme.of(context).textTheme.headline6)
                        ],
                      ),
                    )),
              ),
              botao('Confirmar', 'geraulaa'),
            ])));
  }
}
