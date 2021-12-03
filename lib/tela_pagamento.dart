
import 'package:aulas_particualres_v2/components/buttom.dart';
import 'package:flutter/material.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({Key? key}) : super(key: key);

  @override
  _PagamentoState createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pagamento'),
          centerTitle: true,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(children: [
              Card(
                elevation: 10,
                child: ListTile(
                  title: Text('Apelido do Cartão',
                      style: Theme.of(context).textTheme.headline5),
                  subtitle: Text('Final Cartão: 4514',
                      style: Theme.of(context).textTheme.headline6),
                ),
              ),
              Container(
                  width: 250,
                  height: 70,
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      child: Text('Pagar'),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  content: Container(
                                      height: 100,
                                      child: Column(children: [
                                        Text(
                                            'Confirmar Pagamento no valor de R\$ 100,00 no Cartao \'Apelido do Cartão\'?'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                                width: 100,
                                                height: 50,
                                                child:
                                                    botao('Não', 'geraulaa')),
                                            Container(
                                                width: 100,
                                                height: 50,
                                                child:
                                                    botao('Sim', 'geraulaa')),
                                          ],
                                        ),
                                      ])));
                            });
                      }))
            ])));
  }
}
