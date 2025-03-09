import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tatabook Mini Game",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "NotoSansTagalog",
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 133, 110, 197),
        ),
        backgroundColor: const Color.fromARGB(255, 70, 13, 149),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimagenum = 1;
  int rightimagenum = 2;
  void random() {
    leftimagenum = Random().nextInt(8) + 1;
    rightimagenum = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftimagenum == rightimagenum ? "YOU WIN!" : "Try again",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "Sigmar",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      random();
                    });
                    print("The left button was Pressed");
                  },
                  child: Image(
                    image: AssetImage("assets/image-$leftimagenum.png"),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      random();
                    });
                    print("The right button was Pressed");
                  },
                  child: Image(
                    image: AssetImage("assets/image-$rightimagenum.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
