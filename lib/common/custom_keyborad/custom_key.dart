import 'package:flutter/material.dart';

class CustomKey extends StatelessWidget {
  final String numberKey;
  final VoidCallback onPressed;
  const CustomKey({
    super.key,
    required this.numberKey,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(64, 64),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          numberKey,
          style: const TextStyle(
            fontFamily: "Inter",
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
