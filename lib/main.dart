import 'package:flutter/material.dart';
import 'package:laedeetuto/screens/guest/Auth.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AuthScreen(),
    );
  }
}
