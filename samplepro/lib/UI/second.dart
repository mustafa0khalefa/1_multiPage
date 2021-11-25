import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:samplepro/Function/datat.dart';

class second extends StatefulWidget {
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  String name = data.Name;
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text('Hello Mustafa'),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: new Text('close'))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.lightBlue,
          title: new Text('second'),
        ),
        body: new Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              new Card(
                color: Colors.red.shade100,
                child: Column(
                  children: [
                    new TextButton(
                        onPressed: _showMyDialog,
                        child: new Text('show Dialog')),
                    new TextButton(
                        onPressed: showBottomSheet,
                        child: new Text('showBottomSheet')),
                    new TextButton(
                        onPressed: null, child: new Text('showBottomSheet')),
                    TextButton(
                        onPressed: () => Navigator.of(context)
                          ..pushNamedAndRemoveUntil('/first', (rout) => false),
                        child: new Text('prev')),
                    TextButton(
                        onPressed: () => Navigator.of(context)
                          ..pushNamedAndRemoveUntil('/third', (rout) => false),
                        child: new Text('next'))
                  ],
                ),
              ),
              new Text('Helo $name'),
            ],
          ),
        ));
  }
}
