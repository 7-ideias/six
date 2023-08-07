import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('jornada')),
      body: Container(
        child: Column(
          children: [
            buildSizedBox(context,Colors.indigo),
            buildSizedBox(context,Colors.red),
          ],
        ),
      ),
    );
  }

  SizedBox buildSizedBox(BuildContext context, MaterialColor color) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.height * 0.3,
      child: Container(
        color: color,
      ),
    );
  }


}
