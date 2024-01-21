import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  final String args;
  const TwoPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pushNamed('/');

            // Navigator.of(context).pop('Retorno');

            // Verifica se é possível voltar, senão ele não volta
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop('Retorno');
            } else {
              Navigator.of(context).pushNamed('/');
            }
          },
          child: Text('Voltar para page anterior $args'),
        ),
      ),
    );
  }
}
