import 'package:b_wallet/presentation/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
              Text("Your best choice for e-wallet"),
            ],
          ),

          // const Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Text(
          //         "Your best choice for e-wallet",
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 14,
          //             fontStyle: FontStyle.normal),
          //       ),
          //       SizedBox(
          //         height: 56,
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
