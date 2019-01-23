import 'package:flutter/material.dart';

class AwesomeButton extends StatefulWidget{
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}
class AwesomeButtonState extends State<AwesomeButton>{
  int counter = 0;
  List<String> phrase = ["Flutter","Is","Awesome!"];
  String displayword = "让我告诉你点儿事儿";

  onPressed() {
    setState(() {
      displayword = phrase[counter];
      counter = counter < 2 ? counter+1 : 0;
    });
  }

  @override
  Widget build (BuildContext context){
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(displayword, style: new TextStyle(fontSize: 20.0)),
          new Padding(padding: new EdgeInsets.all(10.0),),
          new RaisedButton(
              child: new Text("拍我一下", style: new TextStyle(color: Colors.white,fontSize: 20.0)),
              color: Colors.deepPurple,
              onPressed: onPressed
          )
        ],
      ),
    );
  }
}