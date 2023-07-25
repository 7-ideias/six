import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/screens/002_main/TelaPrincipal.dart';
import 'package:untitled/screens/AgendaTela.dart';
import 'package:untitled/screens/AjudaESuporteTela.dart';
import 'package:untitled/screens/ClientesTela.dart';
import 'package:untitled/screens/ConfiguracoesTela.dart';
import 'package:untitled/screens/FinanceiroTela.dart';
import 'package:untitled/screens/PedidosTela.dart';
import 'package:untitled/screens/ProdutosTela.dart';
import 'package:untitled/screens/RelatoriosTela.dart';
import 'package:untitled/screens/ResumoTela.dart';
import 'package:untitled/screens/SejaProTela.dart';
import 'package:untitled/screens/ServicosTela.dart';

class TelaDeCarregamentoPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      routes: {
        '/login': (_) => TelaPrincipal(),
        '/agenda': (_) => AgendaTela(),
        '/ajuda': (_) => AjudaESuporteTela(),
        '/clientes': (_) => ClientesTela(),
        '/configs': (_) => ConfiguracoesTela(),
        '/financeiro': (_) => FinanceiroTela(),
        '/pedidos': (_) => PedidosTela(),
        '/produtos': (_) => ProdutosTela(),
        '/relatorios': (_) => RelatoriosTela(),
        '/resumo': (_) => ResumoTela(),
        '/sejapro': (_) => SejaProTela(),
        '/servicos': (_) => ServicosTela()
      },
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
