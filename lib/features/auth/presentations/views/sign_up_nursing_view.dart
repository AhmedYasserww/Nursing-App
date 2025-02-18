import 'package:flutter/material.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_address_text_field.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_age_text_field.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_button_details.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_email_text_field.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_file_upload_button.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_password_text_field.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/custom_phone_number_text_field.dart';
import 'package:nursing_app/features/auth/presentations/views/widgets/cutom_name_text_field.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class SignUpNursingView extends StatefulWidget {
  const SignUpNursingView({super.key});

  @override
  State<SignUpNursingView> createState() => _SignUpNursingViewState();
}

class _SignUpNursingViewState extends State<SignUpNursingView> {
  bool visible = true;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController phoneNumberController;
  late TextEditingController ageController;
  late TextEditingController addressController;

  File? idCardImage;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
    ageController = TextEditingController();
    addressController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneNumberController.dispose();
    ageController.dispose();
    addressController.dispose();
    super.dispose();
  }

  Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        idCardImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          "Create an account for nurses",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: globalKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                NameField(nameController: nameController),
                const SizedBox(height: 20),
                EmailField(emailController: emailController),
                const SizedBox(height: 20),
                PasswordField(
                  passwordController: passwordController,
                  visible: visible,
                  toggleVisibility: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                ),
                const SizedBox(height: 20),
                PhoneNumberField(phoneController: phoneNumberController),
                const SizedBox(height: 20),
                AgeTextField(ageController: ageController),
                const SizedBox(height: 20),
                AddressTextField(addressController: addressController),
                const SizedBox(height: 20),

                CustomFileUploadButton(onTap:pickImage,title: "Upload ID Card",uploadedFile:idCardImage, ),
                const SizedBox(height: 20),
                CustomButtonDetails(
                  globalKey: globalKey,
                  emailController: emailController,
                  passwordController: passwordController,
                  text: "Sign Up",
                  onTap: () {
                    // Add registration logic here
                  },
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


