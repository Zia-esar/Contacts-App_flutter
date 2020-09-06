import 'package:flutter/material.dart';


class ContactCard extends StatelessWidget {
  final String cardText;
  final String cardContact;

  ContactCard({this.cardText, this.cardContact});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white60,
      child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.person),),
        title: Text(cardText),
        subtitle: Text(cardContact),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}