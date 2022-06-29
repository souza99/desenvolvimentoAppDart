import 'package:flutter/material.dart';

class HelloWord extends StatelessWidget {
  String? nome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hellow World'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text('Nome:'),
                hintText: 'Digite o nome de quem está escrevendo: '),
            onChanged: (valorQueDigitei) {
              nome = valorQueDigitei;
            },
          ),
          ElevatedButton(
            child: Text('Imprimir mensagem'),
            onPressed: () {
              mostrarMensagem(nome!, context);
            },
          )
        ],
      ),
    );
  }

  mostrarMensagem(String nome, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(nome + " Hello Word!",
                style: const TextStyle(fontSize: 30)),
          );
        });
  }
}
