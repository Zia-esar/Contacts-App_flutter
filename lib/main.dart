import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contactScreen.dart';
import 'contactData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> ContactData(),
          child: MaterialApp(
        home: ContactScreen(),
      ),
    );
  }
}


