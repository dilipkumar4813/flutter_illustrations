import 'route_strings.dart';
import '../screens.dart';

Map basicRoutes = {
  AppRoutes.home: (context) => const MyHomePage(title: "Initial"),
  AppRoutes.containers: (context) => const BasicContainers(),
  AppRoutes.dialogs: (context) => const BasicDialogs(),
  AppRoutes.appBar: (context) => const BasicAppBar(),
  AppRoutes.basicForm: (context) => const BasicForm(),
};
