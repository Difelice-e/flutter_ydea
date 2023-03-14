import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ydea_replica/pages/home.dart';
import 'package:ydea_replica/pages/contattoLista.dart';
import 'package:ydea_replica/pages/contattoDettaglio.dart';
import 'package:ydea_replica/pages/contattoCreazione.dart';
import 'package:ydea_replica/pages/aziendaLista.dart';
import 'package:ydea_replica/pages/leadLista.dart';
import 'package:ydea_replica/pages/opportunitaLista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue, scaffoldBackgroundColor: Colors.white),
      initialRoute: "/home",
      routes: {
        "/home": (_) => const HomePage(),
        "/contatti": (_) => const ContattiLista(),
        "/dettaglio-contatto": (_) => const ContattoDettaglio(),
        "/creazione-contatto": (_) => ContattoCreazione(),
        "/opportunita": (_) => const OpportunitaLista(),
        "/leads": (_) => const LeadLista(),
        "/aziende": (_) => const AziendaLista(),
      },
    );
  }
}
