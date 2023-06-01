import 'package:b_wallet/presentation/theme/color.dart';
import 'package:flutter/material.dart';

class TextButtonCustom extends StatelessWidget {
  final String textButton;
  final VoidCallback onPressed;
  const TextButtonCustom({
    super.key,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        textButton,
        style: TextStyle(
          color: AppColor.primaryOrange,
          fontFamily: "Inter",
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
