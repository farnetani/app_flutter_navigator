import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pushNamed('/two', arguments: 'teste').then(
            //       (value) => print(value),
            //     );

            // supondo que eu nao quero deixar o usuário usar o voltar
            Navigator.of(context)
                .pushReplacementNamed('/two', arguments: 'teste')
                .then((value) => print(value));
          },
          child: const Text('Two Page'),
        ),
      ),
    );
  }
}
