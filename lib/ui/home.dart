import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  final String title; //should create variables with final in the SLWidgets

  Home({Key key, this.title}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.red.shade900,

      ),
      body: new Center(
        child: new customButton()
      )
    );
  }


}

class customButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: (){
        final snackBar = new SnackBar(content: new Text('Hello Gestures!'),
        backgroundColor: Theme.of(context).backgroundColor,
        duration: new Duration(milliseconds: 4100));

      Scaffold.of(context).showSnackBar(snackBar);
      },

      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(5.5)
        ),
        child: new Text('First Button!'),
      ),
    );
  }




}