import 'package:flutter/material.dart';
import 'package:nursing_app/Core/widgets/custom_button.dart';
class VerifyEmailSuccessViewBody extends StatelessWidget {
  const VerifyEmailSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/check_success.png"),
          const SizedBox(height: 26,),
          const Text("Email Veified Succesfully",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
          const SizedBox(height: 132,),
      CustomButton(textColor: Colors.white, text: "Next", onPressed: (){}),


        ],
      ),
    );
  }
}
