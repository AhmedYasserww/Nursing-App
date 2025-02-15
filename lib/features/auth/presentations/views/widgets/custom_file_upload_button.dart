import 'package:flutter/material.dart';
import 'dart:io';

class CustomFileUploadButton extends StatelessWidget {
  final VoidCallback onTap;
  final File? uploadedFile;
  final String title;

  const CustomFileUploadButton({
    super.key,
    required this.onTap,
    this.uploadedFile,
    this.title = "Upload File",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.upload_file, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              uploadedFile == null ? title : "File Uploaded",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
