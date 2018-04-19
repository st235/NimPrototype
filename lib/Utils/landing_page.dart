import 'package:flutter/material.dart';
import '../UI/GameButton.dart';
class LandingPage extends StatefulWidget {
  @override
  State createState() => new LandingPageState();
}

class LandingPageState extends State<LandingPage> {
@override
   Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new GameButton(12),
          ],
        )
      ],
    );
   }
}