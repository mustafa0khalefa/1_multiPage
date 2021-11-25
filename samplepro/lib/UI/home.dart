import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:samplepro/Function/datat.dart';

class first extends StatefulWidget {
  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
  TextEditingController name = new TextEditingController();

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
          backgroundColor: Colors.lightGreen,
          title: new Text('First'),
        ),
        body: new Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              new Card(
                color: Colors.green.shade100,
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
                        onPressed: () => {
                              data.Name = name.text,
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/second', (rout) => false)
                            },
                        child: new Text('next'))
                  ],
                ),
              ),
              new TextField(
                keyboardType: TextInputType.name,
                decoration: new InputDecoration(
                    icon: Icon(Icons.perm_identity),
                    labelText: 'Enter Your Name'),
                controller: name,
              )
            ],
          ),
        ));
  }
}
