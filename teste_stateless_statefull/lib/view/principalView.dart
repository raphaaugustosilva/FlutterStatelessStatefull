import 'package:flutter/material.dart';
import 'package:teste_stateless_statefull/view/statefulView.dart';
import 'package:teste_stateless_statefull/view/statelessView.dart';

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless X Stateful"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              padding: EdgeInsets.all(20),
              child: Text("Stateless"),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StatelessView()));
              },
            ),
            SizedBox(width: 20),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(20),
              child: Text("Stateful"),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => StatefulView()));
              },
            )
          ],
        ),
      ),
    );
  }
}
