import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        Icons.arrow_forward,
        color: Colors.blue,
      ),
      Container(
        height: 20,
        width: 130,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.only()),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
              size: 17,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'romariomarcal',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        ),
      ),
    ]);
  }
}
