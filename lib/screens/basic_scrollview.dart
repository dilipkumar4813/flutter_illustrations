import 'package:flutter/material.dart';

class BasicScrollView extends StatelessWidget {
  const BasicScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10.9),
          child: Column(
            children: [
              Container(
                height: 500,
                color: Colors.teal,
              ),
              Container(
                height: 500,
                color: Colors.deepPurple,
              ),
              Container(
                height: 500,
                color: Colors.blueGrey,
              ),
              Container(
                height: 500,
                color: Colors.lime,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
