import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'models/cart_model.dart';

void main() => runApp(ElectroStoreApp());

class ElectroStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ElectroStore',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(primary: Colors.deepOrange),
      ),
      home: LandingPage(),
    );
  }
}
