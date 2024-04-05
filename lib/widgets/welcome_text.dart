import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'BEMVINDU',
      style: GoogleFonts.rubikMonoOne(
        fontSize: 60,
        color: Colors.white, // Change this value to adjust the font size
        fontWeight:
            FontWeight.bold, // Change this value to adjust the font weight
      ),
    );
  }
}
