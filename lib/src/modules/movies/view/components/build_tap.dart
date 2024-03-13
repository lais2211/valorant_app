import 'package:flutter/material.dart';

Widget BuildTab(String text, BuildContext context) {
  return Tab(
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
    ),
  );
}