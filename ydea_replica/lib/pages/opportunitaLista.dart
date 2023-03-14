import 'package:flutter/material.dart';
import 'package:ydea_replica/components/opportunitaCard.dart';
import 'package:ydea_replica/components/pipelineCard.dart';
import 'package:ydea_replica/models/opportunita.dart';
import 'package:ydea_replica/models/opzionePipeline.dart';

class OpportunitaLista extends StatefulWidget {
  const OpportunitaLista({Key? key}) : super(key: key);

  @override
  State<OpportunitaLista> createState() => _OpportunitaListaState();
}

class _OpportunitaListaState extends State<OpportunitaLista> {
  bool isMapVisual = false;
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          // backgroundColor: Gradient(colors: []),
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
          title: const Text("Opportunità"),
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
                        child: Text("PIPELINE",
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
        if (selectedTab == 0) listControl(),
        if (selectedTab == 0) list(),
        if (selectedTab == 1) pipeline(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget listControl() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Text("Lista",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Switch(
              value: isMapVisual,
              inactiveThumbColor: Colors.blue,
              activeTrackColor: Colors.grey,
              onChanged: (value) {
                setState(() {
                  isMapVisual = value;
                });
              }),
          const Text("Mappa",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_downward,
                size: 32,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
                size: 32,
              )),
        ],
      ),
    );
  }

  Widget list() => Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: opportunitaLista.length,
          itemBuilder: (context, index) =>
              OpportunitaCard(opportunita: opportunitaLista[index]),
        ),
      );

  Widget pipeline() => Expanded(
          child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              // border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 3,
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Expanded(
                    child: Center(
                  child: Column(children: const [
                    Text(
                      "106",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Opportunità",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ]),
                )),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.grey,
                ),
                Expanded(
                    child: Center(
                  child: Column(children: const [
                    Text(
                      "€ 163.137,50",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Entrate stimate",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ]),
                )),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.grey,
                ),
                Expanded(
                    child: Center(
                  child: Column(children: const [
                    Text(
                      "€ 3.021,06",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Valore medio",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ]),
                ))
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: opzioniPipeline.length,
            itemBuilder: (context, index) =>
                PipelineCard(pipeline: opzioniPipeline[index]),
          )),
          const SizedBox(
            height: 40,
          )
        ],
      ));
}

final List<OpzionePipeline> opzioniPipeline = [
  OpzionePipeline(
      colore: Colors.yellow,
      titolo: "Analisi Esigenze",
      opportunita: "33",
      entrateStimate: "3.000,00",
      valoreMedio: "3.000,00"),
  OpzionePipeline(
      colore: Colors.blue,
      titolo: "Inviare offerta economica",
      opportunita: "16",
      entrateStimate: "0,00",
      valoreMedio: "0,00"),
  OpzionePipeline(
      colore: Colors.orange,
      titolo: "In attesa del decision makers",
      opportunita: "46",
      entrateStimate: "141.317,90",
      valoreMedio: "3.211,75"),
  OpzionePipeline(
      colore: Colors.purple,
      titolo: "Revisionare offerta",
      opportunita: "11",
      entrateStimate: "18.820,50",
      valoreMedio: "1.882,00"),
  OpzionePipeline(
      colore: Colors.green,
      titolo: "Chiuso vinto",
      opportunita: "328",
      entrateStimate: "379.522,70",
      valoreMedio: "1.240,27"),
  OpzionePipeline(
      colore: Colors.red,
      titolo: "Chiuso perso",
      opportunita: "286",
      entrateStimate: "331.770,90",
      valoreMedio: "1.917,75"),
  OpzionePipeline(
      colore: Colors.grey,
      titolo: "Ricontattare in futuro",
      opportunita: "40",
      entrateStimate: "32.814,50",
      valoreMedio: "1.930,20"),
];

final List<Opportunita> opportunitaLista = [
  Opportunita(
      nome: "YdeaCS CRM & Customer Service",
      dataChiusura: "FEBBRAIO 2021",
      statoVendita: "6",
      entrateStimate: "1130,0",
      probabilita: 60,
      anagrafica: "DOLCIARA NALDONI",
      contatto: "Luca Naldoni"),
  Opportunita(
      nome: "YdeaCS - Uso interno",
      dataChiusura: "APRILE 2021",
      statoVendita: "6",
      entrateStimate: "1300,0",
      probabilita: 0,
      anagrafica: "TS Informatica SRL",
      contatto: "Paolo Tazzi"),
  Opportunita(
    nome: "YdeaCS - Uso interno",
    dataChiusura: "SETTEMBRE 2021",
    statoVendita: "6",
    entrateStimate: "1500,0",
    probabilita: 60,
    anagrafica: "D.s. Accumultori SRL",
  ),
  Opportunita(
      nome: "YdeaCS CRM & Customer Service",
      dataChiusura: "NOVEMBRE 2021",
      statoVendita: "6",
      entrateStimate: "985,0",
      probabilita: 35,
      anagrafica: "DOLCIARA NALDONI",
      contatto: "Luca Naldoni"),
  Opportunita(
      nome: "YdeaCS - Uso interno",
      dataChiusura: "GENNAIO 2022",
      statoVendita: "6",
      entrateStimate: "1300,0",
      probabilita: 0,
      anagrafica: "TS Informatica SRL",
      contatto: "Paolo Tazzi"),
  Opportunita(
    nome: "YdeaCS - Uso interno",
    dataChiusura: "FEBBRAIO 2022",
    statoVendita: "6",
    entrateStimate: "1500,0",
    probabilita: 60,
    anagrafica: "D.s. Accumultori SRL",
  ),
];
