import 'package:flutter/material.dart';
import '../UI/GameButton.dart';

class LandingPage extends StatefulWidget {

  List<Widget> buttons = new List<Widget>();

  @override
  State createState() => new LandingPageState();
  
}

class LandingPageState extends State<LandingPage> {
@override
void initState(){
  widget.buttons.add(new GameButton(12, 10.0, 10.0, widget.buttons, widget, this));
}

@override
   Widget build(BuildContext context) {
     print(widget.buttons.length);
    return new Material(
      color: Colors.blueAccent,
      child: new Stack(
        children: <Widget>[
          new SingleChildScrollView(
            child: new Column(
              children: widget.buttons,
            ),
          )

        ],
      ),
    );
   }
}