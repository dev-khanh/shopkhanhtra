import 'package:flutter/material.dart';
class AppState with ChangeNotifier{
  String _name = "khanh";
  String get name => _name;
}