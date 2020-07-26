import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

myapp() {
  var mytext = Text(
    'Welcome To Priya In Your First App',
    textDirection: TextDirection.ltr,
  );
  mypress1() {
    print("Something click for press 1");
  }

  mypress2() {
    print("Somthing click for press 2");
  }

  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.black,
  );
  var MyCalIcon = Icon(Icons.access_alarm);

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress1);

  var MyCalButton = IconButton(icon: MyCalIcon, onPressed: mypress2);

  var MyUrl =
      'https://raw.githubusercontent.com/Priyu623/MyImage/master/Priya.jpg';

  var MyImage = Image.network(
    MyUrl,
    width: double.infinity,
    height: double.infinity,
  );

  var myappbar = AppBar(
      title: mytext,
      backgroundColor: Colors.blueAccent,
      leading: MyImage,
      actions: <Widget>[
        MyEmailIcon,
      ]);

  var myhome = Scaffold(
    appBar: myappbar,
    body: MyImage,
    backgroundColor: Colors.amberAccent,
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
