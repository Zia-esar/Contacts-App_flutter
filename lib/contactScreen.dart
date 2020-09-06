import 'package:flutter/material.dart';
import 'addNewContact.dart';
import 'contactList.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddContact(),
          );
        },
        child: Icon(Icons.add),
      ),
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Container(
        //padding: EdgeInsets.all(15),
        child: ContactList(),
      ),
    );
  }
}
