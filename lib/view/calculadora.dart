import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  double? valor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                label: Text('Valor'), hintText: 'Digite o valor'),
            onChanged: (numero) {
              valor = double.parse(numero);
            },
          )
        ],
      ),
    );
  }
}
