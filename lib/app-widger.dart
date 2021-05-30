import 'package:flutter/material.dart';
import 'package:flutterinit/login%E1%B9%95age.dart';

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
          home: LoginPage()
        );
    }, animation: AppController.instance);
  }
}