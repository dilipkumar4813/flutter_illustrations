import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/app_strings.dart';
import 'package:flutter_illustrations/utils/routes/route_animations.dart';
import 'package:flutter_illustrations/utils/routes/route_strings.dart';
import 'package:lottie/lottie.dart';

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
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Flutter References',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: const FlutterLogo(),
              title: Text(AppStrings.basic),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.basics);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.animation,
                color: Colors.blue,
              ),
              title: Text(AppStrings.animation),
              onTap: () {
                Navigator.pushNamed(context, AppAnimationsRoutes.appAnimations);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              AppStrings.appName,
              style: const TextStyle(
                fontFamily: 'Rampart One',
                fontSize: 28.0,
                color: Colors.purple,
              ),
            ),
            Lottie.asset(
              'assets/lottie/happy-students-studying.json',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ButtonNavigation(route: 1),
                  ButtonNavigation(route: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonNavigation extends StatelessWidget {
  const ButtonNavigation({
    super.key,
    required this.route,
  });

  final int route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          if (route == 1) {
            Navigator.pushNamed(context, AppRoutes.basics);
          } else {
            Navigator.pushNamed(context, AppAnimationsRoutes.appAnimations);
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Colors.purple)),
          ),
        ),
        child: Text(
          route == 1 ? AppStrings.basic : AppStrings.animation,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
