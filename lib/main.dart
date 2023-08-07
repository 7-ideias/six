import 'package:flutter/material.dart';
import 'package:untitled/screens/000_carregamento/TelaDeCarregamentoPrincipal.dart';
import 'package:untitled/service/NotificationService.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();

  runApp(TelaDeCarregamentoPrincipal());

  //**************************************************************
  // final rotina = Rotina();
  // rotina.iniciarRotina();
  //**************************************************************

  //**************************************************************
  // Aguarda 5 minutos e depois para a rotina
  // Timer(Duration(minutes: 5), () {
  //   rotina.pararRotina();
  // });
  //**************************************************************
}
