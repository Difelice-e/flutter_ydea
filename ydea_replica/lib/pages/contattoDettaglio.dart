import 'package:flutter/material.dart';

import '../models/contatto.dart';

class ContattoDettaglio extends StatefulWidget {
  const ContattoDettaglio({Key? key}) : super(key: key);

  @override
  State<ContattoDettaglio> createState() => _ContattoDettaglioState();
}

class _ContattoDettaglioState extends State<ContattoDettaglio> {
  int _selectedTab = 1;

  @override
  Widget build(BuildContext context) {
    final contact = ModalRoute.of(context)!.settings.arguments as Contatto;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        title: Text(contact.fullName!),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: body(contact),
    );
  }

  Widget body(Contatto contact) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            color: contact.cellulare != '' &&
                                    contact.cellulare != null
                                ? Colors.blue
                                : Colors.grey.shade500,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Icon(
                            Icons.phone,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Telefono")
                ],
              ),
              Expanded(child: Container()),
              Column(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            color: contact.cellulare != '' &&
                                    contact.cellulare != null
                                ? Colors.blue
                                : Colors.grey.shade500,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Icon(
                            Icons.phone_android,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Cellulare")
                ],
              ),
              Expanded(child: Container()),
              Column(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            color: contact.email != '' && contact.email != null
                                ? Colors.blue
                                : Colors.grey.shade500,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Icon(
                            Icons.mail,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Email")
                ],
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedTab = 1;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: _selectedTab == 1
                                  ? Colors.blue
                                  : Colors.transparent,
                              width: 2.0))),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Informazioni",
                    softWrap: false,
                    style: TextStyle(
                        color: _selectedTab == 1 ? Colors.blue : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedTab = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: _selectedTab == 2
                                  ? Colors.blue
                                  : Colors.transparent,
                              width: 2.0))),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Commenti",
                    style: TextStyle(
                        color: _selectedTab == 2 ? Colors.blue : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedTab = 3;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: _selectedTab == 3
                                  ? Colors.blue
                                  : Colors.transparent,
                              width: 2.0))),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Eventi",
                    style: TextStyle(
                        color: _selectedTab == 3 ? Colors.blue : Colors.black),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedTab = 4;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: _selectedTab == 4
                                  ? Colors.blue
                                  : Colors.transparent,
                              width: 2.0))),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "Allegati",
                    style: TextStyle(
                        color: _selectedTab == 4 ? Colors.blue : Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          contactTab(contact),
        ]),
      );

  Widget contactTab(Contatto contact) {
    if (_selectedTab == 1) {
      return Column(children: [
        Row(children: const [
          Icon(
            Icons.lock,
            size: 16,
          ),
          Text("Dettaglio")
        ]),
        const SizedBox(
          height: 32,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 8,
              spreadRadius: 1,
            )
          ]),
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            if (contact.titolo != "" && contact.titolo != null)
              contactRow("Titolo:", contact.titolo!),
            contactRow("Nome:", contact.nome),
            contactRow("Cognome:", contact.cognome),
            if (contact.azienda != "" && contact.azienda != null)
              contactRow("Azienda:", contact.azienda!),
            if (contact.cellulare != "" && contact.cellulare != null)
              contactRow("Cellulare:", contact.cellulare!),
            if (contact.ruolo != "" && contact.ruolo != null)
              contactRow("Ruolo:", contact.ruolo!),
          ]),
        )
      ]);
    } else {
      return Container();
    }
  }

  Widget contactRow(String param, String value) => Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(param),
      const SizedBox(height: 24,),
      Text(value, style: TextStyle(color: param == "Azienda:" ? Colors.blue : Colors.black, fontWeight: FontWeight.bold),)
    ],
  );
}
