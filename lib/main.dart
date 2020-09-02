import 'package:desserts_app/screens/dessert_list/dessert_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Dessert App Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: DessertList(),
    );
  }
}
