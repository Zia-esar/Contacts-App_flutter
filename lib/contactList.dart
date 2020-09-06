import './contactData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contactCard.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ContactData>(
      builder: (context, contactData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ContactCard(
              cardText: contactData.data[index].name,
              cardContact: contactData.data[index].contact,
            );
          },
          itemCount: contactData.count,
        );
      },
    );
  }
}
