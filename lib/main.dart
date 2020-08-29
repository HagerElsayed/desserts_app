import 'package:desserts_app/screens/dessert_list/dessert_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dessert App Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: DessertList(),
    );
  }
}
