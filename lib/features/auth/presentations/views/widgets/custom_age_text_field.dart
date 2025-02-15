import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_text_form_field_widget.dart';

class AgeTextField extends StatelessWidget {
  final TextEditingController ageController;

  const AgeTextField({super.key, required this.ageController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: " Enter Your Age",
      keyboardType: TextInputType.number,
      controller: ageController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required. Please enter your age .';
        }
        return null;
      },
    );
  }
}
