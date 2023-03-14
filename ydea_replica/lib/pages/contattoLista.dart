import 'package:flutter/material.dart';

import '../models/contatto.dart';

import '../components/contattoCard.dart';

class ContattiLista extends StatefulWidget {
  const ContattiLista({Key? key}) : super(key: key);

  @override
  State<ContattiLista> createState() => _ContattiListaState();
}

class _ContattiListaState extends State<ContattiLista> {
  void updateList(Contatto? contact) {
    if (contact != null) {
      setState(() {
        contacts.add(contact);
      });
    }
  }

  void creaNuovoContatto() async {
    final dynamic nuovoContatto =
        await Navigator.pushNamed(context, "/creazione-contatto");
    updateList(nuovoContatto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},),
        title: const Text("Contatti"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) => ContactCard(contact: contacts[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: creaNuovoContatto,
        child: const Icon(Icons.add),
      ),
    );
  }
}

final List<Contatto> contacts = [
  Contatto(
      titolo: 'sig',
      nome: 'Alberto',
      cognome: 'De Maio',
      azienda: 'PIERAGO SPEDIZIONI SRLS',
      cellulare: '3887203561',
      ruolo: 'Titolare',
      fullName: 'Alberto De Maio'),
  Contatto(
      titolo: 'sig',
      nome: 'Franco',
      cognome: 'De Maio',
      email: 'a.alby2@gmail.com',
      cellulare: '3887203561',
      ruolo: 'Impiegato',
      fullName: 'Franco De Maio'),
  Contatto(
      titolo: 'sig',
      nome: 'Emanuele',
      cognome: 'Di Felice',
      azienda: 'YDEA SRL',
      email: 'e.difelice@gmail.com',
      cellulare: '3887203561',
      ruolo: 'Sviluppatore',
      fullName: 'Emanuele Di Felice'),
  Contatto(
      titolo: 'sig',
      nome: 'Salvatore',
      cognome: 'De Maio',
      azienda: 'BAULI PANETTONI SPA',
      email: 'a.demai88o@gmail.com',
      ruolo: 'Titolare',
      fullName: 'Salvatore De Maio'),
  Contatto(
      titolo: 'sig',
      nome: 'Luigi',
      cognome: 'De Maio',
      azienda: 'META',
      ruolo: 'Titolare',
      fullName: 'Luigi De Maio'),
];
