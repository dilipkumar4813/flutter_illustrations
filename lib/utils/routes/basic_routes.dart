import 'route_strings.dart';
import '../screens.dart';

Map basicRoutes = {
  AppRoutes.home: (context) => const MyHomePage(title: "Initial"),
  AppRoutes.containers: (context) => const BasicContainers(),
};
