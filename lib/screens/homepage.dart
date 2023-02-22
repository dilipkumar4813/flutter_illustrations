import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/routes/route_strings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.containers);
              },
              child: const Text("Basic Containers"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.dialogs);
              },
              child: const Text("Basic Dialogs"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.appBar);
              },
              child: const Text("App bar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.basicForm);
              },
              child: const Text("Form"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.basicHttp);
              },
              child: const Text("HTTP Call"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.basicChange);
              },
              child: const Text("Change Notifier"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.basicList);
              },
              child: const Text("Basic Lists"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.basicScrollView);
              },
              child: const Text("Basic Scrollview"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.basicNestedScrollView);
              },
              child: const Text("Basic Nested Scrollview"),
            ),
            const Icon(
              Icons.abc_outlined,
              color: Colors.red,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
