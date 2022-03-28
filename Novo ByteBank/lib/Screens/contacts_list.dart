import 'package:flutter/material.dart';
import 'package:new_bytebank/Screens/contact_form.dart';
import 'package:new_bytebank/database/app_database.dart';
import 'package:new_bytebank/models/contact.dart';

class ContactsList extends StatelessWidget {

  final List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: FutureBuilder(
        future: findAll(),
        builder: (context, snapshot) {
          final List<Contact> contacts = (snapshot.data as List<Contact>);
          return ListView.builder(
            itemBuilder: (context, index) {
              final Contact contact = contacts[index];
              return _ContactItem(contact);
            },
            itemCount: contacts.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContactForm(),
                ),
              )
              .then(
                (newContact) => debugPrint(newContact.toString()),
              );
        },
      ),
    );
  }
}
class _ContactItem extends StatelessWidget {

  final Contact contact;

  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name.toString(),
          style: TextStyle(
            fontSize: 19.0,
          ),
        ),
        subtitle: Text(
          contact.accountNumber.toString(),
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}

