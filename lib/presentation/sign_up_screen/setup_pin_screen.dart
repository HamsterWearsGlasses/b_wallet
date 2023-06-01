import 'package:b_wallet/common/custom_keyborad/custom_key.dart';
import 'package:b_wallet/presentation/sign_up_screen/content_widget.dart';
import 'package:b_wallet/presentation/theme/color.dart';
import 'package:flutter/material.dart';

class SetupPinScreen extends StatefulWidget {
  const SetupPinScreen({super.key});

  @override
  State<SetupPinScreen> createState() => _SetupPinScreenState();
}

class _SetupPinScreenState extends State<SetupPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBlue,
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 132,
              ),
              const TextTitle(
                title: "Set Up Your PIN",
                content:
                    "Security code is used to verify your every transaction to be more secure",
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.circle,
                      color: AppColor.darkBlue,
                      size: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.circle,
                      color: AppColor.darkBlue,
                      size: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.circle,
                      color: AppColor.darkBlue,
                      size: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.circle,
                      color: AppColor.darkBlue,
                      size: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.circle,
                      color: AppColor.darkBlue,
                      size: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.circle,
                      color: AppColor.darkBlue,
                      size: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              Container(
                height: 360,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomKey(
                            numberKey: "1",
                            onPressed: () {},
                          ),
                          CustomKey(
                            numberKey: "2",
                            onPressed: () {},
                          ),
                          CustomKey(
                            numberKey: "3",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomKey(
                            numberKey: "4",
                            onPressed: () {},
                          ),
                          CustomKey(
                            numberKey: "5",
                            onPressed: () {},
                          ),
                          CustomKey(
                            numberKey: "6",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomKey(
                            numberKey: "7",
                            onPressed: () {},
                          ),
                          CustomKey(
                            numberKey: "8",
                            onPressed: () {},
                          ),
                          CustomKey(
                            numberKey: "9",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                          ),
                          CustomKey(
                            numberKey: "0",
                            onPressed: () {},
                          ),
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(64, 64),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: Icon(Icons.clear_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
