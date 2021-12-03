import 'package:flutter/material.dart';
import 'components/buttom.dart';

class telaCartao extends StatefulWidget {
  const telaCartao({Key? key}) : super(key: key);

  @override
  _telaCartaoState createState() => _telaCartaoState();
}

class _telaCartaoState extends State<telaCartao> {
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
      appBar: AppBar(title: Text('Gerenciar Cartões'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: cartao.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: ListTile(
                          title: Text('Apelido do Cartão',
                              style: Theme.of(context).textTheme.headline5),
                          subtitle: Text('Final Cartão: 4514',
                              style: Theme.of(context).textTheme.headline6),
                          trailing: IconButton(
                            color: Colors.blue[500],
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                cartao.removeAt(index);
                              });
                            },
                          )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
