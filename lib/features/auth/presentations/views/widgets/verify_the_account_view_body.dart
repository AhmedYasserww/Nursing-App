import 'package:flutter/material.dart';
import 'package:nursing_app/Core/widgets/custom_button.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/verify_account_widgets/build_otp_widget.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/verify_account_widgets/resend_text_widget.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/verify_account_widgets/verify_the_aacount_header.dart';
class VerifyTheAccountViewBody extends StatelessWidget {
  const VerifyTheAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 124,),
          const VerifyTheAccountHeader(),
          const Spacer(flex: 115,),
          const BuildOtpWidget(),
          const SizedBox(height: 73),
         CustomButton(textColor: Colors.white , text: "VERIFY", onPressed: (){}),
          const Spacer(flex: 136,),
          const ResendTextWidget(),
          const Spacer(flex: 151,)

        ],
      ),
    );
  }



}

