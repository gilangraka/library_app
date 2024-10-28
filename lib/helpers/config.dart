import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final String url =
    "https://0f7e-2001-448a-4010-3bdf-c1fc-aaa7-4c68-326.ngrok-free.app";
final String endpoint = "${url}/api/";
final String public = "${url}/public/storage/";

Color primaryColor = Color(0xff0A2A59);
Color greyColor = Color(0xffC4C4C4);
Color blackColor = Color(0xff333333);
Color dangerColor = Color(0xffff4040);

TextStyle primaryTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.normal, color: primaryColor);

TextStyle blackTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.normal, color: blackColor);

TextStyle whiteTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.normal, color: Colors.white);

TextStyle greyTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.normal, color: greyColor);

TextStyle headingTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w700, color: Colors.black, fontSize: 20);

TextStyle dangerTextStyle =
    GoogleFonts.poppins(fontWeight: FontWeight.normal, color: dangerColor);
