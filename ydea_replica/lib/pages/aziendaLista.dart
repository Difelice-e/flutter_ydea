import 'package:flutter/material.dart';
import 'package:ydea_replica/components/aziendaCard.dart';
import 'package:ydea_replica/models/azienda.dart';

class AziendaLista extends StatefulWidget {
  const AziendaLista({Key? key}) : super(key: key);

  @override
  State<AziendaLista> createState() => _AziendaListaState();
}

class _AziendaListaState extends State<AziendaLista> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.blue,
                  Colors.blue.shade800,
                ])),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Aziende"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ]),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade400, width: 1)),
            color: Colors.blue.shade800,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.blueAccent.shade200,
            ),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 0;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: selectedTab == 0 ? Colors.white : Colors.blue,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Center(
                        child: Text("ELENCO",
                            style: TextStyle(
                                color: selectedTab == 0
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold)),
                      )),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTab = 1;
                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: selectedTab == 0
                              ? Colors.blueAccent.shade200
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Center(
                        child: Text("MAPPA",
                            style: TextStyle(
                                color: selectedTab == 0
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                      )),
                )),
              ],
            ),
          ),
        ),
        if (selectedTab == 0) list(),
        if (selectedTab != 0)
          const Center(
            child: Text("maps goes here"),
          ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget list() => Expanded(
        child: ListView.builder(
          itemCount: aziende.length,
          itemBuilder: (context, index) => AziendaCard(azienda: aziende[index]),
        ),
      );
}

final List<Azienda> aziende = [
  Azienda(
      nome: "APPUNTIBAY di Paolo Colleluori",
      titolare: "Paolo Colleluori",
      cellulare: "0885 432222",
      sede: "Via Madonna della Pace, 62",
      sitoWeb: "www.p.colleluori.com",
      ruolo: "Cliente"),
  Azienda(
      nome: "D'Agnello spa",
      titolare: "Walter D'Agnello",
      cellulare: "0885 432222",
      sede: "Via del mulino 85",
      sitoWeb: "www.agnello.com",
      ruolo: "Cliente"),
  Azienda(
      nome: "D'Agnello spa",
      titolare: "Walter D'Agnello",
      cellulare: "0885 432222",
      sede: "Via del mulino 85",
      sitoWeb: "www.agnello.com",
      ruolo: "Cliente"),
  Azienda(
      nome: "D'Agnello spa",
      titolare: "Walter D'Agnello",
      cellulare: "0885 432222",
      sede: "Via del mulino 85",
      sitoWeb: "www.agnello.com",
      ruolo: "Cliente"),
];
