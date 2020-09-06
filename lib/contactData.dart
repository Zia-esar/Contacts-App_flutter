import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import './contactModel.dart';


class ContactData extends ChangeNotifier {
  List<Contact> _data = [
    Contact(name: 'umair',contact: '02178237823'),
    Contact(name: 'umair',contact: '02178237823'),
    Contact(name: 'umair',contact: '02178237823'),
  ];

  UnmodifiableListView<Contact> get data {
    return UnmodifiableListView(_data);
  }

  

  void addContact(String contact_name, String contact_number){
    final contact = Contact(name: contact_name,contact: contact_number);
    _data.add(contact);
    notifyListeners();
  }

  int get count{
    return _data.length;
  }
}
