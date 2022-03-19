
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
          secondary: Colors.purple[300],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purple[300],
          textTheme: ButtonTextTheme.accent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.purple[300])),
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
