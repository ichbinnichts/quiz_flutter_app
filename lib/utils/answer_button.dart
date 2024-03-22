import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.text, required this.onTap});

  final String text;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          backgroundColor: Colors.deepPurple[300],
          foregroundColor: Colors.white),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
