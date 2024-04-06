import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now(); // Get current date and time
    final formattedDate = DateFormat('EEEE MMM dd yyyy HH:mm')
        .format(now); // Format the date and time

    return Container(
      child: Text(formattedDate, // Display the formatted date and time
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white)),
    );
  }
}
