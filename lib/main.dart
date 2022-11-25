import 'package:flutter/material.dart';
import 'package:mergefile/one.dart';

void main() {
  runApp(
    MaterialApp(home: one(),
      theme: new ThemeData(
        primarySwatch:Colors.indigo,
        brightness: Brightness.light,
      ),
    ),
  );
}
