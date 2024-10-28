import 'package:flutter/material.dart';
import 'package:libromate_app/helpers/config.dart';

class BtnPrimaryWidget extends StatelessWidget {
  const BtnPrimaryWidget({
    super.key,
    required this.label,
    required this.onclick,
  });
  final String label;
  final VoidCallback onclick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF023B7E), // Warna biru sesuai gambar
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onclick,
        child: Text(label, style: whiteTextStyle.copyWith(fontSize: 16)),
      ),
    );
  }
}
