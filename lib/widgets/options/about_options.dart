import 'package:flutter/material.dart';

class AboutOptions extends StatelessWidget {
  const AboutOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TagWidget3(),
          Text(
            'This is the About Options List',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class TagWidget3 extends StatelessWidget {
  const TagWidget3({super.key});

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
              color: Colors.black,
              size: 17,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'romariomarcal',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        ),
      ),
      Container(
        height: 20,
        width: 110,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.only()),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.file_copy,
              color: Colors.white,
              size: 17,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '/portfolio',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            )
          ],
        ),
      ),
      Container(
        height: 20,
        width: 110,
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.only()),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.account_tree_rounded,
              color: Colors.white,
              size: 17,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '/about',
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
