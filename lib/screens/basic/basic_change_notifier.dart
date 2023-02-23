import 'package:flutter/material.dart';
import '../../models/person.dart';
import 'package:provider/provider.dart';

class BasicChangeNotifier extends StatefulWidget {
  const BasicChangeNotifier({super.key});

  @override
  State<BasicChangeNotifier> createState() => _BasicChangeNotifierState();
}

class _BasicChangeNotifierState extends State<BasicChangeNotifier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Change Notifier ${Provider.of<Person>(context).name}"),
            ElevatedButton(
              onPressed: () {
                Provider.of<Person>(context, listen: false)
                    .updateContent(2, "John");
              },
              child: Text("Update"),
            )
          ],
        ),
      ),
    );
  }
}
