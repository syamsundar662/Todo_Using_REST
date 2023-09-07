import 'package:flutter/material.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({
    super.key,
    required this.centerTitle,
    this.button,
  });
  final String centerTitle;
  final List<TextButton>? button;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        foregroundColor: Colors.grey,
        actions: button,
        backgroundColor: Colors.black.withOpacity(.5),
        title: Text(
          centerTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
