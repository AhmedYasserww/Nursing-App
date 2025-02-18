import 'package:flutter/material.dart';

class VerifyTheAccountHeader extends StatelessWidget {
  const VerifyTheAccountHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Thank you for creating your account!\n"
          "A confirmation email has been\nsent to your inbox.",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff666666)
      ),
    );
  }
}
