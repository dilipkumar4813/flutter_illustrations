import 'route_strings.dart';
import '../screens.dart';

Map basicRoutes = {
  AppRoutes.home: (context) => const MyHomePage(title: "Home"),
  AppRoutes.basics: (context) => const BasicScreens(),
  AppRoutes.containers: (context) => const BasicContainers(),
  AppRoutes.dialogs: (context) => const BasicDialogs(),
  AppRoutes.appBar: (context) => const BasicAppBar(),
  AppRoutes.basicForm: (context) => const BasicForm(),
  AppRoutes.basicHttp: (context) => const BasicHttp(),
  AppRoutes.basicChange: (context) => const BasicChangeNotifier(),
  AppRoutes.basicList: (context) => const BasicList(),
  AppRoutes.basicScrollView: (context) => const BasicScrollView(),
  AppRoutes.basicNestedScrollView: (context) => const BasicNestedScrollView(),
  AppRoutes.basicGridView: (context) => const BasicGridView(),
};
