import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_button_details.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_email_text_field.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_password_text_field.dart';
import '../../../../core/utils/app_router.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool visible = true;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: globalKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                const SizedBox(
                    height: 184,
                    width: 286,
                    child: Image(image: AssetImage("assets/images/log_in.jpg"))),
                const SizedBox(height: 21),
                EmailField(emailController: emailController),
                const SizedBox(height: 30),
                PasswordField(
                  passwordController: passwordController,
                  visible: visible,
                  toggleVisibility: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                ),
                const SizedBox(height: 30),
                CustomButtonDetails(
                  onTap: () {

                  },
                  globalKey: globalKey,
                  emailController: emailController,
                  passwordController: passwordController,
                  text: "Log In",
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                   const Expanded(
                      flex: 2,
                      child:  Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kSignUpView);
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(fontSize: 22,color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
