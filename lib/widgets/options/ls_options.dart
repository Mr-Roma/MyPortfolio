import 'package:flutter/material.dart';

class ShowOptions1 extends StatelessWidget {
  final Function(String) onOptionSelected;

  const ShowOptions1({Key? key, required this.onOptionSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        TagWidget2(),
        TextWidget(
          text: 'bio',
          description: 'Show my bio information',
          onTap: () => onOptionSelected('bio'),
        ),
        SizedBox(height: 10),
        TextWidget(
          text: 'skills',
          description: 'List all of my skills',
          onTap: () => onOptionSelected('skills'),
        ),
        SizedBox(height: 10),
        TextWidget(
          text: 'fun fact',
          description: 'To see interesting things about me',
          onTap: () => onOptionSelected('fun fact'),
        ),
        SizedBox(height: 10),
        TextWidget(
          text: 'projects',
          description: 'To see all of my projects',
          onTap: () => onOptionSelected('projects'),
        ),
        SizedBox(height: 10),
        TextWidget(
          text: 'clear',
          description: 'To clear the history',
          onTap: () => onOptionSelected('ctrl + l'),
        ),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final String description;
  final VoidCallback onTap;

  const TextWidget({
    Key? key,
    required this.text,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                fontFamily: 'Roboto'),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Roboto',
            ),
          )
        ],
      ),
    );
  }
}

class TagWidget2 extends StatelessWidget {
  const TagWidget2({super.key});

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
                  fontSize: 14,
                  fontFamily: 'Roboto'),
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
                  fontSize: 14,
                  fontFamily: 'Roboto'),
            )
          ],
        ),
      ),
    ]);
  }
}
