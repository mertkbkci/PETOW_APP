import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petow_app/firebase_options.dart';
import 'package:petow_app/navigator/navigator_routes.dart';
//import 'package:petow_app/screens/login_screen.dart';
import 'package:petow_app/screens/page_view.dart';
import 'package:petow_app/screens/register_screen.dart';
import 'package:petow_app/theme/change_theme.dart';
import 'package:provider/provider.dart';

//import 'layout/camera.dart';
// import 'firebase_options.dart';
// import 'screens/page_view.dart';
//import 'layout/profile_screen.dart';
//import 'layout/register_screen.dart';

// import 'layout/description_screen.dart';
// import 'layout/home_screen.dart';
// import 'layout/page_view.dart';
// import 'layout/profile_screen.dart';
// import 'layout/profile_setting.dart';
// import 'layout/search_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = FlutterError.dumpErrorToConsole;
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeChanger>(
        create: (context) => ThemeChanger(),
      ),
    ],
    builder: (contex, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeChanger>().currentTheme,
      //ThemeData.light(useMaterial3: true).copyWith(
      //   progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.black),
      //   appBarTheme: const AppBarTheme(
      //     centerTitle: true,
      //     backgroundColor: Colors.transparent,
      //     systemOverlayStyle: SystemUiOverlayStyle(
      //       statusBarColor: Colors.transparent,
      //       statusBarIconBrightness: Brightness.dark,

      //     ),
      //   ),

      //   scaffoldBackgroundColor: const Color.fromARGB(255, 230, 161, 242),
      //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   // useMaterial3: true,
      // ),
      routes: NavigatorRoutes().items,
     // home: const PetowPageView(),
    );
  }
}
