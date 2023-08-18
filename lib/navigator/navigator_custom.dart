import 'package:flutter/material.dart';
import 'package:petow_app/screens/page_view.dart';
import 'package:petow_app/screens/welcome_screen.dart';

class NavigatorCustom {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == "/") {
      return _navigateToNormal(const WelcomeScreen());
    } else if (routeSettings.name == "/welcomeScreen") {
     
      return _navigateToNormal(const PetowPageView());
    }
    return null;
  }

  Route<dynamic>? _navigateToNormal(Widget child) {
    return MaterialPageRoute(builder: (context) {
      return child;
    });
  }
}
