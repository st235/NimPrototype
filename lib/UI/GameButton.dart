import 'package:flutter/material.dart';

class GameButton extends StatefulWidget {

  int _buttonValue;

  GameButton(this._buttonValue);

  @override
  State createState() => new GameButtonState();
}
class GameButtonState extends State<GameButton> {
  
  GameButtonState();

  @override
Widget build(BuildContext context) {
    return new Material(
        color: Colors.amberAccent,
        child: new InkWell(
          onTap: () => print("Test"),
          child: new Center(
            child: new Container(
    
            //decoration: new BoxDecoration(
              //borderRadius: new BorderRadius.circular(30.0),
              //color: Colors.black,
            //),
            child: new Text(
                widget._buttonValue.toString(), 
                style: new TextStyle(
                  color:  Colors.black87, 
                  fontSize:  50.0, 
                  fontWeight: FontWeight.bold, 
                  fontStyle:  FontStyle.italic
                )
              ),
            ),
          ),
        ),
      );
  }
}