import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sobre'),
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),
        backgroundColor: Colors.blue[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Aulas Particulares',
                style: TextStyle(fontSize: 28, color: Colors.blue[900])),
            Text(
              'O tema escolhido para este projeto foi o desenvolvimento de um aplicativo para o oferecimento de aulas particulares.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
            Text(
                'Este aplicativo tem como objetivo proporcionar um ambiente virtual onde professores e alunos possam oferecer e contratar aulas particulares.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[900],
                ),
                textAlign: TextAlign.center),
            Text(
              'Desenvolvedores:',
              style: TextStyle(fontSize: 18, color: Colors.blue[900]),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent.shade200),
                      image: DecorationImage(
                          image: AssetImage('lib/imagens/leonardo.png')),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Leonardo Gini Ferreira',
                    style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent.shade200),
                      image: DecorationImage(
                          image: AssetImage('lib/imagens/rafael.png')),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  Text('Rafael Perencin Martirani',
                      style: TextStyle(fontSize: 16, color: Colors.blue[900])),
                ],
              )
            ]),
          ],
        ));
  }
}
