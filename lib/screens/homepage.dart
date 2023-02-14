import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/routes/route_strings.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
