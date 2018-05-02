import 'package:flutter/material.dart';
import '../Utils/landing_page.dart';
import 'dart:ui' as ui;

class Sky extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    canvas.drawCircle(
      new Offset(200.0, 400.0),
      100.0,
      new Paint()..color = Colors.amberAccent,
    );
  }


  // Since this Sky painter has no fields, it always paints
  // the same thing and semantics information is the same.
  // Therefore we return false here. If we had fields (set
  // from the constructor) then we would return true if any
  // of them differed from the same fields on the oldDelegate.
  @override
  bool shouldRepaint(Sky oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;
}

class GameButton extends StatefulWidget {

  int _buttonValue = 12;
  double _heightFactor;
  double _widthFactor;
  List<Widget> buttonsList;
  LandingPage lpage;
  LandingPageState lpageState;

  GameButton(this._buttonValue, this._heightFactor, this._widthFactor, this.buttonsList, this.lpage, this.lpageState);
  
  @override
  State createState() => new GameButtonState();
}

class GameButtonState extends State<GameButton> {
  
GameButtonState();

@override
Widget build(BuildContext context) {

  return new Center(
      //heightFactor: 10.0,
      child: new FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          //setState(() => widget.lpage.buttons.add(new GameButton(34, 13.0, 10.0, widget.lpage.buttons,widget.lpage)));
          //widget.lpage.createState().setState(() => widget.lpage.buttons.add(new GameButton(34, 15.0, 10.0, widget.lpage.buttons,widget.lpage)));
// -->          widget.lpage.buttons.add(new GameButton(34, 15.0, 10.0, widget.lpage.buttons,widget.lpage, widget.lpageState));
          print(widget.lpage.buttons.length.toString()); 
          widget.lpageState.setState(() => widget.lpage.buttons.add(new GameButton(34, 1.0, 5.0, widget.lpage.buttons,widget.lpage, widget.lpageState)));
           //widget.lpage.createState().build(context);
           },  
        // print("YEEEE"),
        
          child: new Text(widget._buttonValue.toString(), style: new TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),)
        //,
        
        //new Icon(Icons.notifications_paused, size: 60.0, color: Colors.amberAccent),
      )
  );

  /*return new Center(
    heightFactor: 15.0,
    child: new FlatButton.icon(
      shape: new Border.all(width: 10.0),
      color: Colors.brown,
      label: new Text("DFGHJKL"),
      onPressed: () => print("Clicked"),
      icon: new Text("sdf")
    ),
  );*/
  

 /* return new IconButton(
    highlightColor: Colors.black26,
    disabledColor: Colors.green,
    splashColor: Colors.red,
    padding: new EdgeInsets.all(10.0),
    onPressed: () => print("Clicked"),
    iconSize: 100.0,
    color: Colors.black,
    icon: new Text("sdf")
  );*/

 /* return new Container(
    //color: Colors.black26,
    width: 120.0,      // <-  This property can control circle size
    decoration: new BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
    child: new Center(
      heightFactor: 10.0,
      child: new IconButton(
        onPressed: () => print("THIS IS DE WAY"),
        color: Colors.black,
        icon: new Text(widget._buttonValue.toString(), style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
        //iconSize: 5.0,
      )
    )
  );*/

 /* return new Container(
    color: Colors.black26,
    decoration: new BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
    child: new Center(
      heightFactor: 10.0,
      child: new IconButton(
        color: Colors.amberAccent,
        icon: new Text(widget._buttonValue.toString(), style: new TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),),
        //iconSize: 5.0,
      )
    )
  );*/
/*new FlatButton.icon(
        onPressed: () => print("Здарова, корова"),
        color: Colors.amberAccent,
        icon: new Text("Здарова", style: new TextStyle(color: Colors.black54, fontSize: 30.0),),
        label: new Text("Корова", style: new TextStyle(color: Colors.greenAccent, fontSize: 30.0),),
      ),*/
//  return new CustomPaint(
//  painter: new Sky(),
//);

   /* return new Center(
      heightFactor: widget._heightFactor,
      widthFactor: widget._widthFactor,
      child: new FloatingActionButton(
        onPressed: () {HandleTap(); widget.e();widget.lpage.createState(); print(widget.buttonsList.length); 
        print(GetButton(widget.buttonsList[widget.buttonsList.length - 1])._buttonValue); widget.buttonsList.add(
            new GameButton(GetButtonValue(GetButton(widget.buttonsList[widget.buttonsList.length - 1])), GetHeightFactor(), 10.0, widget.buttonsList, widget.lpage)
          );},
        child: new Text(widget._buttonValue.toString(), style: new TextStyle(fontSize: 20.0),),
      ),
    );*/
  }
}