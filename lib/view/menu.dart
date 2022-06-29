import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Widget criarBotao(String nomeBotao, VoidCallback? acaoBotao) {
    return ElevatedButton(
      child: Text(nomeBotao),
      onPressed: acaoBotao,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          criarBotao('Olá Mundo!', () => Navigator.pushNamed(context, '/hellow')),
          criarBotao('Calcular Idade', () => Navigator.pushNamed(context, '/calcularIdade')),
          criarBotao('Cadastre seu Pokemon', () => Navigator.pushNamed(context, '/cadastraPokemon')),
          criarBotao('Cadastro de usuário', () => Navigator.pushNamed(context, '/cadastraUsuario')),
          criarBotao('Calculadora', () => print('Quinto'))
        ],
      ),
    ));
  }
}
