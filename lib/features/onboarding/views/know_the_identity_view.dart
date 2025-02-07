import 'package:flutter/material.dart';
import 'package:nursing_app/Core/widgets/custom_button.dart';
import 'package:nursing_app/features/onboarding/views/widgets/user_selection_card.dart';

class KnowTheIdentityView extends StatefulWidget {
  const KnowTheIdentityView({super.key});

  @override
  State<KnowTheIdentityView> createState() => _KnowTheIdentityViewState();
}

class _KnowTheIdentityViewState extends State<KnowTheIdentityView> {
  String? selectedUser;

  void nextPage() {
    if (selectedUser != null) {
      print("Navigating as $selectedUser");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 98,
            ),
            const Text('Who are you?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Spacer(
              flex: 109,
            ),
            UserSelectionCard(
              title: 'Nurse',
              description: 'If you nurse click here',
              imagePath: 'assets/images/nurse.png',
              isSelected: selectedUser == 'Nurse',
              onTap: () => setState(() => selectedUser = 'Nurse'),
            ),
            const SizedBox(height: 20),
            UserSelectionCard(
              fontWeight: FontWeight.w400,
              title: 'Patient',
              description: 'If you patient click here',
              imagePath: 'assets/images/patient.png',
              isSelected: selectedUser == 'Patient',
              onTap: () => setState(() => selectedUser = 'Patient'
              ),
            ),
            const Spacer(
              flex: 43,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomButton(
                  backgroundColor: selectedUser != null
                      ? const Color(0xff1EA6D6) // Active color
                      : Colors.grey.shade400, // Disabled color
                  textColor: Colors.white,
                  text: "Next",
                  onPressed: nextPage
              ),
            ),
            const Spacer(
              flex: 45,
            )
          ],
        ),
      ),
    );
  }
}



