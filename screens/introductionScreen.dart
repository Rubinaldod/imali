import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_screen/src/introduction_screen.dart';

void main() {
  runApp(IntrodutionScreen());
}

class IntrodutionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'poppins'),
      home: Scaffold(
        backgroundColor: Color(0xff4BA4B8),
        body: Imali(),
      ),
    );
  }
}

class Imali extends StatefulWidget {
  @override
  _ImaliState createState() => _ImaliState();
}

class _ImaliState extends State<Imali> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to the Imali app",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.asset("assets/africa.png", width: 275.0),
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.asset("assets/africa.png", width: 275.0),
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.asset("assets/africa.png", width: 275.0),
          ),
        )
      ],
      onDone: () {
        print('this is cliqued');
      },
      showNextButton: true,
      showSkipButton: true,
      dotsDecorator: DotsDecorator(
          spacing: EdgeInsets.all(5),
          activeColor: Color(0xff2E6571),
          activeSize: Size(20, 10),
          size: Size.square(10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )),
      skip: Text("Skip"),
      next: Icon(Icons.navigate_next),
      done: Text('Done'),
    );
  }
}
