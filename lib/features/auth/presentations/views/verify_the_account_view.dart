import 'package:flutter/material.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/verify_the_account_view_body.dart';
class VerifyTheAccountView extends StatelessWidget {
  const VerifyTheAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: VerifyTheAccountViewBody()),
    );
  }
}
