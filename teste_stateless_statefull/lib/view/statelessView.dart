import 'package:flutter/material.dart';
import 'package:teste_stateless_statefull/helpers/randomicoHelper.dart';

class StatelessView extends StatelessWidget {
  int _numeroRandomicoResultado = 0;
  
  StatelessView(){
    _numeroRandomicoResultado = obtemNumeroRandomico();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless"),
        backgroundColor: Colors.green,
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
                _numeroRandomicoResultado = obtemNumeroRandomico();
              },
            ),
          ],
        ),
      ),
    );
  }
}
