import 'package:b_wallet/presentation/theme/color.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String textButton;
  final VoidCallback onPressed;
  const Button({super.key, required this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 327,
      decoration: BoxDecoration(
        color: AppColor.primaryOrange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(237, 56),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          textButton,
          style: const TextStyle(
            fontFamily: "Inter",
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
