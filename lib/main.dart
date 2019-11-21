import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:unicorndial/unicorndial.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
      hasLabel: true,
      labelText: "AlertBox",
      currentButton: FloatingActionButton(
          backgroundColor: Colors.amber,
        mini: true,
        onPressed: () => show(),
      )));

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Demo1",
        currentButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child:CircleAvatar(
            backgroundImage:  AssetImage('image/uni1.png'),
          ),
          mini: true,
          onPressed: (){},
        )));

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Demo2",
        currentButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          mini: true,
          onPressed: (){}
        )));

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Demo3",
        currentButton: FloatingActionButton(
          backgroundColor: Color(0xff4236dd),
          child:CircleAvatar(
            backgroundImage:  AssetImage('image/client.png'),
          ),
          mini: true,
          onPressed: (){},
        )));

    return Scaffold(
        floatingActionButton: UnicornDialer(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
            parentButtonBackground: Colors.redAccent,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon(Icons.add),
            childButtons: childButtons),
        appBar: AppBar(
          title: Text('Learn Unicorn Dialer With Flash'),
        ),

        );
  }

  void show() {
    showDialog(
        context: context,
        builder:(BuildContext context){
          return AlertDialog(
            title: showMessage(),
            content: Text('what u wann say'),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: (){
                 Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  showMessage() {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('image/b6.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Demo Title'),
        )
      ],
    );
  }
}


