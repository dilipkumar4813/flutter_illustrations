import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/app_strings.dart';
import '../models/home.dart';
import 'package:flutter_illustrations/utils/routes/route_strings.dart';

class BasicScreens extends StatelessWidget {
  const BasicScreens({super.key});

  static List<Home> routes = [
    Home(route: AppRoutes.containers, buttonTitle: AppStrings.basicContainers),
    Home(route: AppRoutes.dialogs, buttonTitle: AppStrings.basicDialogs),
    Home(route: AppRoutes.appBar, buttonTitle: AppStrings.basicAppBar),
    Home(route: AppRoutes.basicForm, buttonTitle: AppStrings.basicForm),
    Home(route: AppRoutes.basicHttp, buttonTitle: AppStrings.basicHttp),
    Home(
        route: AppRoutes.basicChange,
        buttonTitle: AppStrings.basicChangeNotifier),
    Home(route: AppRoutes.basicList, buttonTitle: AppStrings.basicLists),
    Home(
        route: AppRoutes.basicScrollView,
        buttonTitle: AppStrings.basicScrollView),
    Home(
        route: AppRoutes.basicNestedScrollView,
        buttonTitle: AppStrings.basicNestedScrollView),
    Home(route: AppRoutes.basicGridView, buttonTitle: AppStrings.basicGridView),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(AppStrings.basic),
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
                      child: Text("${routes[index].buttonTitle}"),
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
