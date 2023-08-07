import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/desenvolvedor/desenvolvedor.dart';
import 'package:untitled/desenvolvedor/tela_de_id.dart';
import 'package:untitled/screens/001_login/LoginPage.dart';
import 'package:untitled/screens/002_main/TelaPrincipal2.dart';
import 'package:untitled/screens/003_register/products/CadastroProduto.dart';
import 'package:untitled/screens/AgendaTela.dart';
import 'package:untitled/screens/AjudaESuporteTela.dart';
import 'package:untitled/screens/ClientesTela.dart';
import 'package:untitled/screens/ConfiguracoesTela.dart';
import 'package:untitled/screens/FinanceiroTela.dart';
import 'package:untitled/screens/PedidosTela.dart';
import 'package:untitled/screens/PerfilTela.dart';
import 'package:untitled/screens/RelatoriosTela.dart';
import 'package:untitled/screens/ResumoTela.dart';
import 'package:untitled/screens/SejaProTela.dart';
import 'package:untitled/screens/ServicosTela.dart';
import 'package:untitled/screens/Teste.dart';
import 'package:untitled/screens/VendaTela.dart';

import '../../page/pdf_page.dart';
import '../003_register/clientes/CadastroClienteTela.dart';
import '../produtos_tela.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaDeCarregamentoPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        // textTheme: GoogleFonts.lobsterTextTheme(Theme.of(context).textTheme),
        // fontFamily: 'Georgia',
      ),
      home: SplashPage(),
      routes: {
        '/principal': (_) => TelaPrincipal2(),
        '/login': (_) => LoginPage(),
        '/agenda': (_) => AgendaTela(),
        '/ajuda': (_) => AjudaESuporteTela(),
        '/clientes': (_) => ClientesTela(),
        '/cadcliente': (_) => CadastroClienteTela(),
        '/configs': (_) => ConfiguracoesTela(),
        '/financeiro': (_) => FinanceiroTela(),
        '/pedidos': (_) => PedidosTela(),
        '/produtos': (_) => ProdutosTela(),
        '/cadastro_produto': (_) => CadastroProduto(),
        '/relatorios': (_) => RelatoriosTela(),
        '/resumo': (_) => ResumoTela(),
        '/sejapro': (_) => SejaProTela(),
        '/servicos': (_) => ServicosTela(),
        '/perfil': (_) => PerfilTela(),
        '/teste': (_) => Teste(),
        '/venda': (_) => VendaTela(),
        '/pdf': (_) => PdfPage(),
        '/desenvolvedor': (_) => DesenvolvedorPage(),
        '/tela_de_identificacao_ou_cadastro': (_) => TelaInicio(),
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
    Timer(Duration(seconds: 1), () {
      // Navigator.pushReplacementNamed(context, '/pdf');
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
