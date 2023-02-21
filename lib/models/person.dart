import 'package:flutter/widgets.dart';

class Person extends ChangeNotifier {
  int age;
  String name;

  Person({
    required this.age,
    required this.name,
  });

  void updateContent(int a, String n) {
    age = a;
    name = n;
    notifyListeners();
  }
}
