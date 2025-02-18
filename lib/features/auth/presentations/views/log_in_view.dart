import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursing_app/Core/utils/app_router.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/log_in_view_body.dart';
class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LogInViewBody(),
    );
  }
}

class RememberMeAndForgotPasswordWidget extends StatelessWidget {
  final bool rememberMe;
  final ValueChanged<bool?> onChanged;

  const RememberMeAndForgotPasswordWidget({
    super.key,
    required this.rememberMe,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                checkboxTheme: CheckboxThemeData(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  side: const BorderSide(color: Color(0xffCDD1E0), width: 2), // Change border color
                ),
              ),
              child: Checkbox(

                  value: rememberMe,
                  onChanged: onChanged,
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                checkColor: const Color(0xff000C14),
                activeColor: const Color(0xffFFFFFF),

              ),
            ),
            const Text('Remember Me',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Text('Forgot Password?', style: TextStyle(color: Color(0xffE86969),fontSize: 15,fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: const [
        Expanded(child: Divider(color: Colors.black,)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Or With', style: TextStyle(fontSize:18,fontWeight: FontWeight.w400),), ),

        Expanded(child: Divider(
          color: Colors.black,
        )),
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

