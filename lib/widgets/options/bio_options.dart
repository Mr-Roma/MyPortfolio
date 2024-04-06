import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class BioOptions extends StatelessWidget {
  const BioOptions({super.key});

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
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white, // Set the color of the border
                      width: 2.0, // Set the width of the border
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/romario_profile.jpeg',
                      fit: BoxFit.cover, // You can adjust the fit as needed
                      width: 100, // Set the width of the image
                      height: 100, // Set the height of the image
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      TextBio(
                        teks: 'Romario Marcal',
                        color: Colors.white,
                        fontsize: 14,
                      ),
                      TextBio(
                        color: Colors.grey,
                        teks: '21 Years Old',
                        fontsize: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset('assets/verified.png'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              TextBio(
                  teks:
                      'Hi there, I am a Software and AI engineer enthusiast. Meanwhile I also a Youtuber and Influencer, passionate with Mobile, AI model and Web development, as well as like to learn new things.',
                  color: Colors.white,
                  fontsize: 14)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 10,
                    width: 10,
                    child: Image.asset('assets/github.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextBio(teks: 'Github', color: Colors.amber, fontsize: 14),
                  InkWell(
                    onTap: () => launch('https://github.com/Mr-Roma'),
                    child: TextBio(
                        teks: '@GithubLink', color: Colors.white, fontsize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 10,
                    child: Image.asset('assets/youtube.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextBio(teks: 'Youtube', color: Colors.amber, fontsize: 14),
                  InkWell(
                    onTap: () => launch(
                        'https://www.youtube.com/channel/UChCKch9q9aDfwNRgk0d_Xhg'),
                    child: TextBio(
                        teks: '@YoutbeLink', color: Colors.white, fontsize: 14),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 10,
                    child: Image.asset('assets/youtube.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextBio(teks: 'Facebook', color: Colors.amber, fontsize: 14),
                  InkWell(
                    onTap: () => launch(
                        'https://www.facebook.com/profile.php?id=100006299598508'),
                    child: TextBio(
                        teks: '@FacebookLink',
                        color: Colors.white,
                        fontsize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 10,
                    child: Image.asset('assets/linkedin.png'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextBio(teks: 'Linkedin', color: Colors.amber, fontsize: 14),
                  InkWell(
                    onTap: () => launch(
                        'https://www.linkedin.com/in/romario-marcal-60a481258/'),
                    child: TextBio(
                        teks: '@LinkedinLink',
                        color: Colors.white,
                        fontsize: 14),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextBio extends StatelessWidget {
  final Color color;
  final String teks;
  final double fontsize;
  const TextBio({
    super.key,
    required this.teks,
    required this.color,
    required this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: TextStyle(
          color: color, fontSize: fontsize, fontWeight: FontWeight.bold),
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
              '/bio',
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
