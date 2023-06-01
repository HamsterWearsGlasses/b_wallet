import 'package:b_wallet/presentation/theme/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.hintText,
    this.suffix,
    this.isHide,
    this.callback,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String? hintText;
  final Widget? suffix;
  final bool? isHide;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      onTap: () {
        callback?.call();
      },
      obscureText: isHide ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(12),
        suffixIcon: suffix,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightGray),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryBlue),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.errorColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
