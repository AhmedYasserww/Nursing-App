import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class BuildOtpWidget extends StatelessWidget {
  const BuildOtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 50,
        fieldWidth: 45,
        activeColor: Colors.grey.shade400,
        inactiveColor: Colors.grey.shade300,
        selectedColor: Colors.blue,
      ),
      onChanged: (value) {},
    );
  }
}
