import 'package:flutter/material.dart';
import 'package:new_bytebank/Screens/contact_form.dart';
import 'package:new_bytebank/Screens/contacts_list.dart';
import 'package:new_bytebank/database/app_database.dart';
import 'package:new_bytebank/models/contact.dart';

import 'Screens/dashboard.dart';

void main() {
  runApp(const BytebankApp());
  save(Contact(1,'Fernando',1000)).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green[900],
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: Colors.green[900],
              secondary: Colors.blueAccent[700],
            ),
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent[700],
              textTheme: ButtonTextTheme.primary,
            )
        ),
        home: Dashboard(),//Dashboard(),
    );
  }
}

