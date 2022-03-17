
import 'package:flutter/material.dart';
import 'package:projeto_bytebank/screens/transferencia/lista.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          primary: Colors.purple[600],
          secondary: Colors.purpleAccent[200],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purpleAccent[200],
          textTheme: ButtonTextTheme.accent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.purpleAccent[200])),
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
