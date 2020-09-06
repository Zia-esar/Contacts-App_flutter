import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contactData.dart';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final   nameTextEditController = TextEditingController();
  final   phoneTextEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(children: <Widget>[
          Text(
            'Create Contact',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            controller: nameTextEditController,
            decoration: InputDecoration(
              hintText: 'Enter Name',
            ),
          ),
          TextField(
            controller: phoneTextEditController,
            decoration: InputDecoration(
              hintText: 'Enter Number',
            ),
          ),
          SizedBox(height: 20),
          RaisedButton(
            onPressed: () {
              Provider.of<ContactData>(context).addContact(nameTextEditController.text, phoneTextEditController.text);
              //Provider.of<ContactData>(context).addContact('waqas', '23042034');
              print('add button pressed');
              Navigator.pop(context);
            },
            child: Text('Add Contact'),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ]),
      ),
    );
  }
}
