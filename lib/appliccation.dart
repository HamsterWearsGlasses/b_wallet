import 'package:b_wallet/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class BWallet extends StatelessWidget {
  const BWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
