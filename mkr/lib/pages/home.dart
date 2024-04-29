import 'package:flutter/material.dart';
import 'package:mkr/widgets/university.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List uniList;
  int numb = 0;
  @override
  void initState() {
    super.initState();
    uniList = [
      {
        "title": "УжНУ",
        "img": "images/u1.png",
        "description": "Найкращий у світі університет"
      },
      {
        "title": "ЛПНУ",
        "img": "images/u2.png",
        "description": "Ніби і крутий але УжНУ краще"
      },
      {
        "title": "КНУ",
        "img": "images/u3.png",
        "description": "Крута червона будівля"
      },
      {
        "title": "УКУ",
        "img": "images/u4.png",
        "description": "Наскільки крутий настільки і дорогий"
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.only(left: 30, right: 30, top: 50),
          child: Column(
            children: [
              UniversityCardWidget(
                title: uniList[numb]["title"],
                img: uniList[numb]["img"],
                description: uniList[numb]["description"],
              ),
              Row(children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (numb == 0) {
                        numb = uniList.length - 1;
                      } else {
                        numb--;
                      }
                    });
                  },
                  child: Text("Назад"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 88, 144))),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (numb + 1 == uniList.length) {
                        numb = 0;
                      } else {
                        numb++;
                      }
                    });
                  },
                  child: Text("Далі"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 88, 144))),
                )
              ])
            ],
          )),
    );
  }
}
