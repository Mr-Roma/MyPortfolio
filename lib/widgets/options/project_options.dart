import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class ProjectOptions extends StatelessWidget {
  const ProjectOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TagWidget3(),
          SizedBox(
            height: 10,
          ),
          Text(
            'List of My Projects',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: GestureFlipCard(
                  frontImagePath: 'assets/project_1.png',
                  backContent: Text(
                    'Project 1 Description',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Flexible(
                child: GestureFlipCard(
                  frontImagePath: 'assets/project_1.png',
                  backContent: Text(
                    'Project 1 Description',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Flexible(
                child: GestureFlipCard(
                  frontImagePath: 'assets/project_1.png',
                  backContent: Text(
                    'Project 1 Description',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
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
              '/projects',
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

class GestureFlipCard extends StatelessWidget {
  final String frontImagePath;
  final Widget? backContent;
  final double width;
  final double height;

  const GestureFlipCard({
    Key? key,
    required this.frontImagePath,
    this.backContent,
    this.width = 200,
    this.height = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      flipOnTouch: true,
      direction: FlipDirection.HORIZONTAL,
      front: Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAlias, // Prevent pixelation on resizing
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0), // Add subtle rounding
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Add subtle shadow
              spreadRadius: 0.5,
              blurRadius: 1.0,
            ),
          ],
        ),
        child: Image.asset(
          frontImagePath,
          fit: BoxFit.fill,
        ),
      ),
      back: backContent ??
          Container(
            color: Colors.grey[200],
            child: Center(
              child: Text('Project Details'),
            ),
          ),
    );
  }
}
