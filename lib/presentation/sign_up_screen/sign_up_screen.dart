import 'package:b_wallet/common/button_custom/custom_button.dart';
import 'package:b_wallet/common/button_custom/custom_text_button.dart';
import 'package:b_wallet/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:b_wallet/presentation/sign_up_screen/setup_pin_screen.dart';
import 'package:b_wallet/presentation/theme/color.dart';
import 'package:flutter/material.dart';

import '../../common/custom_field/custom_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final birthdayController = TextEditingController();

  final usernameFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final nameFocusNode = FocusNode();
  final birthdayFocusNode = FocusNode();

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
                      "Sign Up ",
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
                      controller: nameController,
                      focusNode: nameFocusNode,
                      hintText: "Name",
                      callback: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: usernameController,
                      focusNode: usernameFocusNode,
                      hintText: "Phone Number",
                      callback: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: birthdayController,
                      focusNode: birthdayFocusNode,
                      hintText: "Birthday",
                      callback: () {},
                    ),
                    const SizedBox(
                      height: 20,
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
                      height: 20,
                    ),
                    Button(
                      textButton: "Sign Up",
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return SetupPinScreen();
                        }));
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButtonCustom(
                            textButton: "Sign In",
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return SignInScreen();
                              }));
                            }),
                      ],
                    ),
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
