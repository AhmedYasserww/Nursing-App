import 'package:flutter/material.dart';
import 'package:nursing_app/Core/widgets/custom_button.dart';
import 'package:nursing_app/Core/widgets/custom_text_form_field_widget.dart';
import 'package:nursing_app/constants.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              const Text(
                'Hi, Welcome to App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Enter Your Email',
                controller: emailController,
              ),
              const SizedBox(height: 12),
              CustomTextField(
                hintText: 'Enter Your Password',
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 12),
              RememberMeAndForgotPassword(
                rememberMe: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                textColor: Colors.white,
                backgroundColor: kPrimaryColor,
                text: 'Login',
                onPressed: () {
                  // Handle login logic
                },
              ),
              const SizedBox(height: 20),
              const DividerWithText(),
              const SizedBox(height: 12),
              const GoogleLoginButton(),
              const SizedBox(height: 20),
              const SignUpRedirect(),
            ],
          ),
        ),
      ),
    );
  }
}

class RememberMeAndForgotPassword extends StatelessWidget {
  final bool rememberMe;
  final ValueChanged<bool?> onChanged;

  const RememberMeAndForgotPassword({
    super.key,
    required this.rememberMe,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: rememberMe, onChanged: onChanged),
            const Text('Remember Me'),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Forgot Password?', style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Or With'),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Image.asset('assets/images/google_logo.png', width: 24, height: 24),
      label: const Text('Login with Google'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.grey),
      ),
    );
  }
}

class SignUpRedirect extends StatelessWidget {
  const SignUpRedirect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () {},
          child: const Text('Sign Up', style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
