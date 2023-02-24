import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextAnimations extends StatelessWidget {
  const TextAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Text Animations"),
      ),
      body: Column(
        children: [
          const RotateText(),
          const FadeText(),
        ],
      ),
    );
  }
}

class FadeText extends StatelessWidget {
  const FadeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 32.0,
            fontFamily: 'Orbitron',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('Are you!'),
              FadeAnimatedText('Are you Doing!!'),
              FadeAnimatedText('Are you Doing Great!!!'),
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ),
    );
  }
}

class RotateText extends StatelessWidget {
  const RotateText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 150,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const SizedBox(width: 20.0, height: 100.0),
          const Text(
            'Be',
            style: TextStyle(
                fontSize: 43.0,
                fontFamily: 'Orbitron',
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(width: 20.0, height: 100.0),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 40.0,
              fontFamily: 'Rampart One',
              color: Colors.black,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('AWESOME'),
                RotateAnimatedText('OPTIMISTIC'),
                RotateAnimatedText('DIFFERENT'),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ],
      ),
    );
  }
}