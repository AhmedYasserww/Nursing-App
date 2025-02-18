import 'package:flutter/material.dart';
class ResendTextWidget extends StatelessWidget {
  const ResendTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Didn’t receive the code?",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          "Request a new code in 00:30S",
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
