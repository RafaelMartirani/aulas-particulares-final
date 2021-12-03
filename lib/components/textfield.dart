import 'package:flutter/material.dart';

class campoTexto extends StatelessWidget {
  const campoTexto(this.rotulo, this.placeholder, {Key? key}) : super(key: key);

  final String rotulo;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: TextFormField(
          style: Theme.of(context).textTheme.headline1,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: rotulo,
            labelStyle: Theme.of(context).textTheme.headline1,
            hintText: placeholder,
            hintStyle: Theme.of(context).textTheme.headline2,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Theme.of(context).focusColor),
            ),
          ),
        ));
  }
}
