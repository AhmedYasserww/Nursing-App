import 'package:flutter/material.dart';
import 'package:nursing_app/Core/widgets/custom_button.dart';
import 'package:nursing_app/Core/widgets/custom_text_form_field_widget.dart';
import 'package:nursing_app/constants.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_social_button.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/do_not_have_an_account.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/or_divider_widget.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/remember_me_and%20forget_password_widget.dart';
class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
 late TextEditingController emailController;
 late TextEditingController passwordController;
  bool rememberMe = false;

  @override
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 134),
              const Text(
                'Hi, Welcome to App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 45),
              CustomTextField(
                hintText: 'Enter Your Email',
                controller: emailController,
              ),
              const SizedBox(height: 25),
              CustomTextField(
                hintText: 'Enter Your Password',
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 25),
              RememberMeAndForgotPasswordWidget(
                rememberMe: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value!;
                  });
                },
              ),
              const SizedBox(height: 50),
              CustomButton(
                textColor: Colors.white,
                backgroundColor: kPrimaryColor,
                text: 'Login',
                onPressed: () {

                },
              ),
              const SizedBox(height: 46),
              const OrDivider(),
              const SizedBox(height: 76),
              CustomSocialButton(
                text: "Login with Google",
                imagePath: 'assets/images/google_logo.png', onPressed: () {  },
              ),
              const SizedBox(height: 72),
              const DoNotHaveAnAccount(),
            ],
          ),
        ),
      );

  }
}
