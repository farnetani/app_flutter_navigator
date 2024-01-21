import 'one_page.dart';
import 'two_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home: const OnePage(),
        initialRoute: '/',
        routes: {
          '/': (context) => const OnePage(),
          '/two': (_) => const TwoPage(
              args: 'teste'), // quando nao uso contexto, posso usar _
        });
  }
}
