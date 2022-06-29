import 'package:flutter/material.dart';

class CadastroPokemon extends StatelessWidget {
  String? nome;
  int? anoCadastro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de pokemon'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text('Nome:'), hintText: 'Digite o seu nome completo'),
            onChanged: (valorDigitado) {
              nome = valorDigitado;
            },
          ),
          TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text('Data de Descoberta:'),
                  hintText: 'Digite a data da descoberta'),
              onChanged: (valorDigitado) {
                anoCadastro = int.parse(valorDigitado);
              }),
          ElevatedButton(
            child: Text('Calcular Idade'),
            onPressed: () {
              int anoAtual = DateTime.now().year;
              int idade = anoAtual - anoCadastro!;
              mostrarResultado(idade.toString(), context);
            },
          )
        ],
      ),
    );
  }

  mostrarResultado(String resultado, BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(resultado, style: const TextStyle(fontSize: 30)),
          );
        });
  }
}
