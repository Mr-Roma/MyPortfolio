import 'package:flutter/material.dart';

class FunFactCard extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl; // Optional image URL

  const FunFactCard({
    super.key,
    required this.title,
    required this.description,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blueAccent.withOpacity(0.8),
            Colors.purpleAccent.withOpacity(0.8),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (imageUrl != null)
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 100,
                width: 100,
                child: Image.asset(
                  imageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 10.0),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              description,
              style: const TextStyle(color: Colors.white70, fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutOptions extends StatelessWidget {
  final List<FunFact> funFacts; // List of your FunFact objects

  const AboutOptions({super.key, required this.funFacts});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TagWidget3(),
          SizedBox(height: 20.0),
          ListView.builder(
            shrinkWrap: true, // Prevent excessive scrolling
            itemCount: funFacts.length,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return FunFactCard(
                title: funFacts[index].title,
                description: funFacts[index].description,
                imageUrl: funFacts[index].imageUrl, // Optional
              );
            },
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class FunFact {
  // Create a model for your fun facts
  final String title;
  final String description;
  final String? imageUrl; // Optional image URL

  FunFact({
    required this.title,
    required this.description,
    this.imageUrl,
  });
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
        width: 110,
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
              '/funfact',
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
