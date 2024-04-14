import 'package:flutter/material.dart';

class TerminalInput extends StatefulWidget {
  final Function(String) onCommandEntered;

  const TerminalInput({Key? key, required this.onCommandEntered})
      : super(key: key);

  @override
  _TerminalInputState createState() => _TerminalInputState();
}

class _TerminalInputState extends State<TerminalInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            showCursor: true,
            cursorColor: Colors.white,
            controller: _controller,
            onSubmitted: (value) {
              widget.onCommandEntered(value);
              _controller.clear();
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: 'Enter command...',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
