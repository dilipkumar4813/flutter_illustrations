import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieScreen extends StatelessWidget {
  const LottieScreen({super.key});

  static List lotties = [
    'assets/lottie/fancy-loading.json',
    'assets/lottie/no-internet-connection-empty-state.json',
    'assets/lottie/confetti.json',
    'assets/lottie/favourite-app-icon.json',
    'assets/lottie/motorcycle.json',
    'assets/lottie/success.json',
    'assets/lottie/link.json',
    'assets/lottie/fireworks.json',
    'assets/lottie/robot.json',
    'assets/lottie/work-load.json',
    'assets/lottie/star-world.json',
    'assets/lottie/chat-loading.json',
    'assets/lottie/orange-loading.json',
    'assets/lottie/editing.json',
    'assets/lottie/checkbox.json',
    'assets/lottie/rocket-loading.json',
    'assets/lottie/chat.json',
    'assets/lottie/dog.json',
    'assets/lottie/leads-funnel.json',
    'assets/lottie/dislike.json',
    'assets/lottie/location.json',
    'assets/lottie/space.json',
    'assets/lottie/payment.json',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Lottie"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: GridView.count(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(
              lotties.length,
              (index) {
                return Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Lottie.asset(
                        lotties[index],
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
