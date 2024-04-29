import 'package:flutter/material.dart';

class UniversityCardWidget extends StatefulWidget {
  String title, img, description;
  UniversityCardWidget(
      {required this.title,
      required this.img,
      required this.description,
      super.key});

  @override
  State<UniversityCardWidget> createState() => _UniversityCardWidgetState();
}

class _UniversityCardWidgetState extends State<UniversityCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 255, 88, 144),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(fontSize: 40),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Expanded(flex: 1, child: Image.asset(widget.img))],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.description,
              )
            ],
          ),
        ]));
  }
}
