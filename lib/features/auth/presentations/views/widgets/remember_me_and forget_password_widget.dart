import 'package:flutter/material.dart';
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
