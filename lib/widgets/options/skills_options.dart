import 'package:flutter/material.dart';

class SkillsOptions extends StatelessWidget {
  SkillsOptions({super.key});
  final List<Skill> skills = [
    Skill(name: 'Flutter', proficiency: 80, Icons.code),
    Skill(name: 'JavaScript', proficiency: 70, Icons.code),
    Skill(name: 'Python', proficiency: 70, Icons.code),
    Skill(name: 'Figma', proficiency: 80, Icons.design_services),
    Skill(name: 'Firebase', proficiency: 80, Icons.data_object_outlined),
    Skill(name: 'Golang', proficiency: 80, Icons.code),
    Skill(name: 'Photoshop', proficiency: 90, Icons.design_services),
  ];

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
            'My Skills',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10.0, // Spacing between skills
            runSpacing: 10.0, // Spacing between rows
            children: skills.map((skill) => SkillCard(skill: skill)).toList(),
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
              '/skills',
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

class Skill {
  final String name;
  final int proficiency;
  final IconData icon;

  const Skill(this.icon, {required this.name, required this.proficiency});
}

class SkillCard extends StatefulWidget {
  final Skill skill;

  const SkillCard({required this.skill, super.key});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation =
        Tween<double>(begin: 0.0, end: widget.skill.proficiency / 100.0)
            .animate(_controller);
    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Icon(
            widget.skill.icon,
            color: Colors.white,
          ),
          const SizedBox(width: 10.0),
          Text(
            widget.skill.name,
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          const Spacer(), // Push progress bar to right
          Stack(
            children: [
              Container(
                width: 100.0,
                height: 10.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) => Container(
                  width: _animation.value *
                      100.0, // Animated width based on progress
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 5.0),
          Text(
            '${widget.skill.proficiency}%',
            style: const TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
