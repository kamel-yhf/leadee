import 'package:flutter/material.dart';
import 'package:laedeetuto/screens/guest/Auth.dart';
import 'package:laedeetuto/screens/guest/Password.dart';
import 'package:laedeetuto/screens/guest/Term.dart';

class GuestScreen extends StatefulWidget {
  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  List<Widget> _widgets = [];
  int _indexSelected = 0;

  @override
  void initState() {
    super.initState();
    _widgets.addAll([
      AuthScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index)),
      TermScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index)),
      PasswordScreen(
          onChangedStep: (index) => setState(() => _indexSelected = index)),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return _widgets.elementAt(_indexSelected);
  }
}
