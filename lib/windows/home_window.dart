import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portofolio_web/widgets/terminal_widget.dart';
import 'package:portofolio_web/widgets/topbar_wiidget.dart';

class HomeWindow extends StatelessWidget {
  const HomeWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 1000,
            child: Image.asset(
              'assets/wallpapper.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TopBarWindow(),
              TerminalWidget(),
            ],
          )
        ],
      ),
    );
  }
}
