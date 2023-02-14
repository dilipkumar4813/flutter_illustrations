import 'package:flutter/material.dart';

class BasicContainers extends StatelessWidget {
  const BasicContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10.5,
            ),
            Text(
              "Containers",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.5,
              ),
            ),
            const SizedBox(
              height: 10.5,
            ),
            RowEvenlyWidget(),
            Expanded(
              child: Container(
                color: Colors.teal,
                alignment: Alignment.centerLeft,
                child: Text("Left Align"),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: Text("Center Align"),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blueAccent,
                alignment: Alignment.centerRight,
                child: Text("Right Align"),
              ),
            ),
            Stack(
              // Stacked view for overlaps
              children: [
                Image.asset("assets/images/retro-background.webp"),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: Image.asset("assets/images/clouds.png"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
            BottomContainerWidget(),
          ],
        ),
      ),
    );
  }
}

// Align the container to the bottom
class BottomContainerWidget extends StatelessWidget {
  const BottomContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.access_alarm, color: Colors.amberAccent, size: 24.0),
              Icon(Icons.seven_k_rounded,
                  color: Colors.amberAccent, size: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}

// Create an evenly spaced row
class RowEvenlyWidget extends StatelessWidget {
  const RowEvenlyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            color: Colors.red,
            child: const Text(
              "Expanded",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            color: Colors.red,
            child: const Text("Expanded"),
          ),
        ),
      ],
    );
  }
}
