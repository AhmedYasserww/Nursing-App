
import 'package:flutter/material.dart';
import 'package:nursing_app/constants.dart';
class CustomButtonDetails extends StatelessWidget {
  final GlobalKey<FormState> globalKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String text;
  final void Function()? onTap;

  const CustomButtonDetails({
    super.key,
    required this.globalKey,
    required this.emailController,
    required this.passwordController,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 50,
        width: double.infinity,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16,color: Colors.white,fontWeight:FontWeight.w600 ),
        ),
      ),
    );
  }
}
