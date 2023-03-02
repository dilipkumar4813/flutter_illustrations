import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/app_strings.dart';
import '../models/home.dart';
import 'package:flutter_illustrations/utils/routes/route_animations.dart';

class AnimationsScreens extends StatelessWidget {
  const AnimationsScreens({super.key});

  static List<Home> routes = [
    Home(
        route: AppAnimationsRoutes.lottieAnimation,
        buttonTitle: AppStrings.lottie),
    Home(
        route: AppAnimationsRoutes.materialDialogs,
        buttonTitle: AppStrings.materialDialogs),
    Home(
        route: AppAnimationsRoutes.imageCarouselAnimation,
        buttonTitle: AppStrings.imageCarousel),
    Home(
        route: AppAnimationsRoutes.textAnimations,
        buttonTitle: AppStrings.textAnimations),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(AppStrings.animation),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          children: List.generate(
            routes.length,
            (index) {
              return Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.teal,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, routes[index].route);
                      },
                      child: Text(routes[index].buttonTitle),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
