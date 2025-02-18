import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursing_app/Core/utils/app_router.dart';
class DoNotHaveAnAccount extends StatelessWidget {
  const DoNotHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: "Don't have an account? ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff0D0E0E),
            ),
          ),
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kKnowTheIdentityView);
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff160062),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}