import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_text_form_field_widget.dart';
class AddressTextField extends StatelessWidget {
  final TextEditingController addressController;

  const AddressTextField({super.key, required this.addressController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: addressController,
      validator: (value) => value == null || value.isEmpty ? 'Field is required' : null,
      hintText: "Enter Your Address",
    );
  }
}