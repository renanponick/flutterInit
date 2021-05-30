import 'package:flutter/material.dart';
import 'package:flutterinit/login-page.dart';

import 'app-controller.dart';
import 'home-page.dart';

class Appwidget extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: AppController.instance.isDartTheme 
              ? Brightness.dark
              : Brightness.light
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
    }, animation: AppController.instance);
  }
}