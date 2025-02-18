import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_text_form_field_widget.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneNumberField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "Enter Your Phone Number",
      keyboardType: TextInputType.number,
      controller: phoneController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required. Please enter a phone number.';
        } else if (value.length != 11) {
          return 'Phone number must be exactly 11 digits long.';
        }
        return null;
      },
    );
  }
}
