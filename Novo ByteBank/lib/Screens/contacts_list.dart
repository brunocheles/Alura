import 'package:flutter/material.dart';
import 'package:new_bytebank/Screens/contact_form.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'Bruno',
                style: TextStyle(
                  fontSize: 19.0,
                ),
              ),
              subtitle: Text(
                '1234',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContactForm(),
            ),
          );
        },
      ),
    );
  }
}
