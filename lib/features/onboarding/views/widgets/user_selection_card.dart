import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UserSelectionCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;
  final FontWeight? fontWeight;

  const UserSelectionCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,

          border: Border.all(color: const Color(0xff666666), width: 1),
        ),
        child: Column(
          children: [
            Image.asset(imagePath, height: 80),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight:fontWeight ?? FontWeight.w800,
                color: isSelected ? Colors.white : Colors.black,
                  fontFamily: GoogleFonts.roboto().fontFamily
              ),
            ),
            const SizedBox(height:5),
            Text(
              description,
              style: TextStyle(
                  fontSize: 20,
                  color: isSelected ? Colors.white70 : const Color(0xff666666),
                  fontWeight: FontWeight.w300,
                  fontFamily: GoogleFonts.roboto().fontFamily
              ),
              // textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}