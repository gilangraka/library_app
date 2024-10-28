import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputWidget extends StatelessWidget {
  const InputWidget(
      {super.key,
      this.obsecure = false,
      required this.label,
      required this.controller});

  final bool obsecure;
  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey, // Warna border abu-abu
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey, // Warna border abu-abu saat enabled
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey, // Warna border abu-abu saat focused
          ),
        ),
        labelText: label,
        labelStyle: GoogleFonts.poppins(
          color: Colors.grey, // Warna teks label
          fontSize: 16,
        ),
      ),

      style: GoogleFonts.poppins(), // Font untuk teks yang diketik
    );
  }
}
