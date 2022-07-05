import 'package:flutter/material.dart';
class AnswerContainer extends StatelessWidget {
  const AnswerContainer({
    Key? key,
    required this.scorekeeper,
  }) : super(key: key);

  final List<Icon> scorekeeper;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey.shade900),
          child: Row(
            children: scorekeeper,
          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(left: 125),
          child: Text(
            'Answers',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}