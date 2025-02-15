import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nursing_app/Core/utils/app_router.dart';
import 'package:nursing_app/Core/widgets/custom_button.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  int currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/Doctor1.png",
      "title": "Find\nyour best nurses here",
      "description":
      "This action provides all amenities for the patient. You can request a nurse to assist you with anything within his work."
    },
    {
      "image": "assets/images/Doctor2.png",
       "title": "",
      "description":
      "A comprehensive home healthcare app that connects patients with professional nurses, "
          "offering convenient and safe medical services. Through this app, users can easily request nursing "
          "services such as IV placement, wound care, and injections, with direct communication options with caregivers."
          " It provides personalized, on-demand care to meet your health needs from the comfort of home."
    },
  ];

  void nextPage() {
    if (currentIndex < onboardingData.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      GoRouter.of(context).pushReplacement(AppRouter.kLogInView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // Animated Image
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),
              child: Image.asset(
                onboardingData[currentIndex]["image"]!,
                width: double.infinity,
                key: ValueKey<int>(currentIndex),
              ),
            ),
            const SizedBox(height: 20),
            // Animated Title (Hidden if empty)
            if (onboardingData[currentIndex]["title"]!.isNotEmpty)
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) => SlideTransition(
                  position: Tween<Offset>(
                      begin: const Offset(0, 0.5),
                      end: Offset.zero
                  ).animate(animation),
                  child: child,
                ),
                child: Text(
                  onboardingData[currentIndex]["title"]!,
                  textAlign: TextAlign.center,
                  key: ValueKey<int>(currentIndex),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            const SizedBox(height: 10),
            // Animated Description
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) => SlideTransition(
                position: Tween<Offset>(
                    begin: const Offset(0, 0.5),
                    end: Offset.zero
                ).animate(animation),
                child: child,
              ),
              child: Text(
                onboardingData[currentIndex]["description"]!,
                textAlign: TextAlign.center,
                key: ValueKey<int>(currentIndex),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const Spacer(),
            // Next Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                textColor: Colors.white,
                text: "Next",
                onPressed: nextPage,
              ),
            ),
            const SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
