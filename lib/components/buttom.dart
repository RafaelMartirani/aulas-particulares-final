import 'package:flutter/material.dart';

class botao extends StatelessWidget {
  const botao(this.rotulo, this.navigation, {Key? key}) : super(key: key);

  final String rotulo;
  final String navigation;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: 70,
        padding: EdgeInsets.only(top: 20),
        child: ElevatedButton(
            child: Text(rotulo),
            onPressed: () {
              Navigator.pushNamed(context, navigation);
            }));
  }
}
