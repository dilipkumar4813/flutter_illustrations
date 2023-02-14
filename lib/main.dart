import 'package:flutter/material.dart';
import 'utils/routes/route_strings.dart';
import 'utils/routes/basic_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Illustrations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: "Testing the values"),
      initialRoute: AppRoutes.home,
      routes: {...basicRoutes},
    );
  }
}
