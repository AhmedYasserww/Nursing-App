
import 'package:flutter/material.dart';
import 'package:nursing_app/constants.dart';
class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key,this.onSaved,this.onChange,
     this.validator, this.prefixIcon,this.suffixIcon,
     this.obscureText =false,
     this.controller,this.filled,
     this.fillColor,this.hintText,
     this.keyboardType});


   final void Function(String?)? onSaved;
   final void Function(String?)? onChange;
   final String? Function(String?)? validator;
   final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText ;
  final bool? filled;
  final TextEditingController? controller;
   final Color? fillColor;
   final String? hintText;
   final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {

      return TextFormField(
        keyboardType: keyboardType,
        controller: controller ,
        obscureText:obscureText,
        onSaved:onSaved ,
        onChanged: onChange,
        validator: validator,
          decoration:InputDecoration(

            fillColor:fillColor ,
              filled: filled,
            prefixIcon:prefixIcon ,
            prefixIconColor: Colors.black.withOpacity(.7),
            hintText:hintText ,
            suffixIcon: suffixIcon,

              hintStyle: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(.7)
              ),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
           focusedBorder: buildBorder(kPrimaryColor),
            errorBorder: buildBorder(Colors.red),
            focusedErrorBorder: buildBorder(Colors.red),
            border: const OutlineInputBorder()

          )
      );

  }
   OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white,width: 1.2),
    );
   }
}
