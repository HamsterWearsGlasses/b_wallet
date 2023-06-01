import 'package:b_wallet/common/button_custom/custom_button.dart';
import 'package:b_wallet/common/button_custom/custom_text_button.dart';
import 'package:b_wallet/presentation/home_screen/home_screen.dart';
import 'package:b_wallet/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:b_wallet/presentation/theme/color.dart';
import 'package:flutter/material.dart';

import '../../common/custom_field/custom_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final usernameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  double whiteContainerHeight = 500;

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColor.primaryBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 60,
                ),
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              constraints: const BoxConstraints(
                minHeight: 320,
                maxHeight: 500,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sign In ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextField(
                      controller: usernameController,
                      focusNode: usernameFocusNode,
                      hintText: " Phone Number",
                      callback: () {},
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomTextField(
                      controller: passwordController,
                      focusNode: passwordFocusNode,
                      hintText: "Password",
                      isHide: hidePassword,
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        child: const Icon(Icons.remove_red_eye),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Button(
                      textButton: "Sign In",
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return HomeScreen();
                        }));
                      },
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: TextButtonCustom(
                        textButton: "Forgot Password",
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have account yet?",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.lightGray,
                          ),
                        ),
                        TextButtonCustom(
                          textButton: "Sign Up ",
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return SignUpScreen();
                            }));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
