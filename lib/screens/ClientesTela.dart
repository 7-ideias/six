import 'package:flutter/material.dart';

class ClientesTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Clientes'),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () {
                  // Lógica quando o primeiro ícone é pressionado
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Lógica quando o segundo ícone é pressionado
                },
              ),
            ),
          ],
        ),
        body: Container());
  }
}
