import 'package:flutter/material.dart';

class TextType extends StatelessWidget {
  const TextType({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 15),
    );
  }
}