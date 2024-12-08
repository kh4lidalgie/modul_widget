import 'package:flutter/material.dart';

void main() {
  runApp(Dialog());
}

class Dialog extends StatelessWidget {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  //set up the button
  Widget okButton = FloatingActionButton(
    child: Text("OK"),
    onPressed: () {},
  );

  //set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My Alert"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  //show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
