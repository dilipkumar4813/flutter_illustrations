import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          const Icon(
            Icons.notification_add_sharp,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Icon(
            Icons.credit_card,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
        title: const Text("Hello"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Something else"),
            ),
          ],
        ),
      ),
    );
  }
}
