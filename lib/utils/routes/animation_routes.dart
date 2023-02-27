import 'route_animations.dart';
import '../screens.dart';

Map animationRoutes = {
  AppAnimationsRoutes.textAnimations: (context) => const TextAnimations(),
  AppAnimationsRoutes.imageCarouselAnimation: (context) =>
      const ImageCarouselScreen(),
  AppAnimationsRoutes.materialDialogs: (context) =>
      const MaterialDialogsScreen(),
};
