import 'package:b_wallet/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:b_wallet/presentation/theme/color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onPrepairData();
    });
    super.initState();
  }

  Future<void> onPrepairData() async {
    await Future.delayed(const Duration(seconds: 2)).whenComplete(() {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return SignInScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBlue,
      body: Stack(
        children: [
          Center(
            child: Image.asset("assets/images/logo.png"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset("assets/images/pattern.png"),
            ],
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Your best choice for e-wallet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 56,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
