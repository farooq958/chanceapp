import 'package:chance/SRC/Data/Resources/Theme/app_theme.dart';
import 'package:chance/SRC/Presentation/Widgets/Dashboard/splash.dart';
import 'package:flutter/material.dart';

import 'SRC/Data/AppData/app_context.dart';
import 'SRC/Data/AppData/data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  Data.app.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chance App',
      navigatorKey: AppContext.navigatorKey,
      theme:  AppTheme.instance.lightTheme ,
      home: const SplashScreen(),
    );
  }
}

