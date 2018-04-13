import 'package:flutter/material.dart';
import 'row_child.dart';

//void main() => runApp(new MyApp());
void main() => runApp(new MyStatefulApp());

/*
  *a flutter app containing training for basic layouts
  * row(), column() etc etc...
  * then create a custom widget
  * understanding appbar and widget
  *
 */
class MyStatefulApp extends StatefulWidget{

  @override
  State createState() {
   return new _MyStatefulAppState();
  }
}

class _MyStatefulAppState extends State<MyStatefulApp>{
    String _title="App Title";
    String _myState="App State";

    void _iconPressed(String buttonName){
      setState(() {
        _myState= buttonName;
      });
    }

    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: _title,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(_title),
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.add_alert), onPressed: (){_iconPressed("alert");}),
              new IconButton(icon: new Icon(Icons.hdr_on), onPressed: (){_iconPressed("HDR");}),
              new IconButton(icon: new Icon(Icons.dashboard), onPressed: (){_iconPressed("dashboard");}),
            ],
          ),
          body: new Container(
            padding: const EdgeInsets.all(22.2),
            child: new Text(_myState),
          )
        ),
      );
    }


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Layouts',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Layout Demo"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(23.4),
          child: new Column(
            children: <Widget>[
              new ColumnData(),
              new Row(
                children: <Widget>[
                  new RowChild()
                ],
              )
            ],
          ),
 /*
            child: new Column(
              children: <Widget>[
                new Text("First Column Child"),
                new Text("Second Column Child"),
                new Text("Third Column Child"),
                new Row(
                  children: <Widget>[
                    new Text("First Row Child"),
                    new Text("Second Row Child"),
                    new Text("Third Row Child"),
                  ],
                )
              ],
            ),
*/
        )
      ),
    );
  }
}



class ColumnData extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Text("First Column Child"),
        new Text("Second Column Child"),
        new Text("Third Column Child")
      ],
    );
  }
}