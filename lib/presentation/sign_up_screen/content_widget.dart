import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  final String content;
  const TextTitle({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            title,
            softWrap: true,
            maxLines: 1,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            content,
            softWrap: true,
            maxLines: 2,
            style: const TextStyle(
              fontFamily: "Inter",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            strutStyle: StrutStyle(
              height: 1.5,
              fontFamily: "Inter",
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
