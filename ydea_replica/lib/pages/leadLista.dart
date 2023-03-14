import 'package:flutter/material.dart';
import 'package:ydea_replica/components/leadCard.dart';
import 'package:ydea_replica/models/lead.dart';

class LeadLista extends StatelessWidget {
  const LeadLista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Leads"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget body() => ListView.builder(
        itemCount: leads.length,
        itemBuilder: (context, index) => LeadCard(lead: leads[index]),
      );
}

final List<Lead> leads = [
  Lead(
      nome: "Walter D'Agnello",
      data: "16-01-2020",
      azienda: "D'Agnello di Walter D'Agnello",
      cellulare: "0885 432222",
      statoLead: "Lead perso - Partner"),
  Lead(
      nome: "Luca Nervi",
      data: "10-03-2020",
      cellulare: "085 6432522",
      statoLead: "Lead spazzatura - Partner",
      email: "l.nervi@fusion.it"),
  Lead(
      nome: "Paolo Bitta",
      data: "22-05-2021",
      azienda: "Camper per l'Italia",
      cellulare: "377 7513452",
      statoLead: "Lead perso - Partner"),
  Lead(
      nome: "Walter D'Agnello",
      data: "16-01-2020",
      azienda: "D'Agnello di Walter D'Agnello",
      cellulare: "0885 432222",
      statoLead: "Lead perso - Partner"),
];
