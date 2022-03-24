import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  labelText: 'Fullname',
                ),
              ),
              TextField(
                controller: _accountNumberController,
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  labelText: 'Account Number',
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      final String name = _nameController.text;
                      final int? accountNumber = int.tryParse(_accountNumberController.text);
                    },
                    child: Text('Create'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
