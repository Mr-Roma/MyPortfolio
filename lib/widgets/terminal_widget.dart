import 'package:flutter/material.dart';
import 'package:portofolio_web/widgets/date_widget.dart';
import 'package:portofolio_web/widgets/options/funfact_options.dart';
import 'package:portofolio_web/widgets/options/bio_options.dart';
import 'package:portofolio_web/widgets/options/ls_options.dart';
import 'package:portofolio_web/widgets/options/project_options.dart';
import 'package:portofolio_web/widgets/options/skills_options.dart';
import 'package:portofolio_web/widgets/tag_widget.dart';
import 'package:portofolio_web/widgets/welcome_text.dart';
import 'package:portofolio_web/widgets/terminal_input.dart';

class TerminalWidget extends StatefulWidget {
  const TerminalWidget({Key? key});

  @override
  _TerminalWidgetState createState() => _TerminalWidgetState();
}

class _TerminalWidgetState extends State<TerminalWidget> {
  List<Widget> executedCommands = [];
  Map<String, Widget> commandWidgets = {
    'ls': ShowOptions1(
      onOptionSelected: (String) {},
    ),
    'bio': BioOptions(),
    'skills': SkillsOptions(),
    'fun fact': AboutOptions(
      funFacts: [
        FunFact(
          title: 'Best Mobile Programmer',
          description:
              'Winning the title of Best Mobile Programmer in the Hackathon Competition',
          imageUrl: 'assets/best_mp.png', // Optional image URL
        ),
        FunFact(
          title: 'Futsal Athlete',
          description: 'The Futsal Player of Informatics Futsal Athlete player',
          imageUrl: 'assets/athlete.jpeg', // Optional image URL
        ),
        FunFact(
          title: 'Alumni of Youth Parliament of Timor-Leste',
          description: 'Former President of Dili Bench Parliament',
          imageUrl: 'assets/apftl.jpeg', // Optional image URL
        ),
        FunFact(
          title: 'Google For Developers Student Club Telkom University',
          description: 'Member of Web and App Dev',
          imageUrl: 'assets/gdsc.png', // Optional image URL
        ),
        FunFact(
          title: 'Become Mahasiswa of the Year of 2022',
          description:
              'In 2022, I am nominated as the Student of the Year of Informatics Faculty in Telkom University',
          imageUrl: 'assets/mahasiswa_of_the_year.jpeg', // Optional image URL
        ),
      ],
    ),
    'projects': ProjectOptions(),
    // Add more commands and their respective widgets here
  };
  @override
  void initState() {
    super.initState();

    // Request keyboard focus on widget build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(FocusNode());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Container(
        width: 800,
        height: 500, // Adjust height as needed for content
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SingleChildScrollView(
            // Wrap with SingleChildScrollView
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DateWidget(),
                TagWidget(),
                WelcomeText(),
                ListView.builder(
                  reverse: true,
                  shrinkWrap: true, // Prevent list from expanding
                  physics:
                      NeverScrollableScrollPhysics(), // Disable list scrolling
                  itemCount: executedCommands.length,
                  itemBuilder: (context, index) => executedCommands[index],
                ),
                TerminalInput(
                  onCommandEntered: (command) {
                    if (command.toLowerCase() == 'clear') {
                      setState(() {
                        executedCommands.clear(); // Clear executedCommands list
                      });
                      return;
                    }
                    if (executedCommands.isEmpty && command != 'ls') {
                      setState(() {
                        executedCommands.add(Text(
                          'Please enter "ls" first to see other list options',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ));
                      });
                      return;
                    }

                    Widget? widget = commandWidgets[command];
                    if (widget != null) {
                      setState(() {
                        executedCommands.insert(
                            0, widget); // Add at the beginning
                      });
                    } else {
                      setState(() {
                        executedCommands.insert(
                          0,
                          Text(
                            'Command "$command" not found',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
