import 'package:flutter/material.dart';
import 'package:flutter_illustrations/utils/routes/route_strings.dart';
import '../models/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Home> routes = [
    Home(route: AppRoutes.containers, buttonTitle: "Basic Container"),
    Home(route: AppRoutes.dialogs, buttonTitle: "Basic Dialogs"),
    Home(route: AppRoutes.appBar, buttonTitle: "Basic Appbar"),
    Home(route: AppRoutes.basicForm, buttonTitle: "Basic Form"),
    Home(route: AppRoutes.basicHttp, buttonTitle: "Basic HTTP"),
    Home(route: AppRoutes.basicChange, buttonTitle: "Change Notifier"),
    Home(route: AppRoutes.basicList, buttonTitle: "Basic List"),
    Home(route: AppRoutes.basicScrollView, buttonTitle: "Basic Scrollview"),
    Home(
        route: AppRoutes.basicNestedScrollView,
        buttonTitle: "Basic Nested Scrollview"),
    Home(route: AppRoutes.basicGridView, buttonTitle: "Basic Gridview"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
