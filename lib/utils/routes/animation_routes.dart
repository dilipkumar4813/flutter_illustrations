import 'route_animations.dart';
import '../screens.dart';

Map animationRoutes = {
  AppAnimationsRoutes.appAnimations: (context) => const AnimationsScreens(),
  AppAnimationsRoutes.textAnimations: (context) => const TextAnimations(),
  AppAnimationsRoutes.imageCarouselAnimation: (context) =>
      const ImageCarouselScreen(),
  AppAnimationsRoutes.materialDialogs: (context) =>
      const MaterialDialogsScreen(),
  AppAnimationsRoutes.lottieAnimation: (context) => const LottieScreen(),
};
