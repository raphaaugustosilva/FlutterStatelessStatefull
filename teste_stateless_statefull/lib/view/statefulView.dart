import 'package:flutter/material.dart';
import 'package:teste_stateless_statefull/helpers/randomicoHelper.dart';

class StatefulView extends StatefulWidget {
  @override
  _StatefulViewState createState() => _StatefulViewState();
}

class _StatefulViewState extends State<StatefulView> {
  int _numeroRandomicoResultado = 0;

  @override
  void initState() {
    super.initState();
    _numeroRandomicoResultado = obtemNumeroRandomico();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${_numeroRandomicoResultado.toStringAsFixed(0)}",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(20),
              child: Text("Random"),
              onPressed: () {
                setState(() {
                  _numeroRandomicoResultado = obtemNumeroRandomico();
                });
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
