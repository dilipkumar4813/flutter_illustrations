import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextAnimations extends StatelessWidget {
  const TextAnimations({super.key});

  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

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
          const TypewriterText(),
          const TyperText(),
          const ColorizeText(colorizeColors: colorizeColors)
        ],
      ),
    );
  }
}

class ColorizeText extends StatelessWidget {
  const ColorizeText({
    super.key,
    required this.colorizeColors,
  });

  final List<MaterialColor> colorizeColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Larry Page',
              textStyle: const TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
              colors: colorizeColors,
            ),
          ],
        ),
      ),
    );
  }
}

class TyperText extends StatelessWidget {
  const TyperText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Rampart One',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText('Discipline is the best tool'),
            TyperAnimatedText('Design first, then code'),
            TyperAnimatedText('Do not patch bugs out, rewrite them'),
            TyperAnimatedText('Do not test bugs out, design them out'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}

class TypewriterText extends StatelessWidget {
  const TypewriterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.deepPurple,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Rampart One',
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText('Discipline is the best tool'),
            TypewriterAnimatedText('Design first, then code'),
            TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
            TypewriterAnimatedText('Do not test bugs out, design them out'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
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
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 28.0,
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
