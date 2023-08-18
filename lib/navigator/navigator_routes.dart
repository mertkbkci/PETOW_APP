
import 'package:petow_app/screens/login_screen.dart';

import '../screens/page_view.dart';
import '../screens/welcome_screen.dart';

class NavigatorRoutes {
  static const _paraph = "/";
  final items = {
    _paraph: (context) => const WelcomeScreen(),
    NavigateRoutes.loginScreen.withParaph: (context) => const LoginScreen(),
    NavigateRoutes.petowPageView.withParaph: (context) => const PetowPageView(),
  };
}

  enum NavigateRoutes {
  welcomeScreen,
  loginScreen,
  petowPageView,
}

extension NavigateRoutesExtension on NavigateRoutes{
  String get withParaph => "/$name";
}