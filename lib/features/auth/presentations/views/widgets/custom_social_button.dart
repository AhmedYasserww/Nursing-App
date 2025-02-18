import 'package:flutter/material.dart';
class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({super.key, required this.text, required this.onPressed, required this.imagePath});
  final String text;
  final void Function() onPressed;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape:RoundedRectangleBorder(
            side: BorderSide(color:  const Color(00000066).withOpacity(.4),width: 1.7),
            borderRadius:BorderRadius.circular(16),
          ),
        ),
          onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity
          ),
          title: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(.6)),
          ),
          leading: Image.asset(imagePath),
        ),

      ),
    );
  }
}
