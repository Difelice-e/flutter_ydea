import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ydea_replica/components/titoloSezione.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.black54)),
        ),
        title: Text(_selectedIndex == 2 ? "Menu" : "Dashboard"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app_sharp,
              size: 35,
            ),
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 30,
          color: Colors.blue,
          child: Container(
            height: 30,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == 2) {
                return menu(context);
              } else if (index == 0) {
                return dashboard();
              } else {
                return Container();
              }
            },
            controller: _pageController,
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "eventi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget dashboard() => SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitoloSezione(title: "Preferite", icon: Icons.star),
          const SizedBox(
            height: 16,
          ),
          preferiti(),
          const SizedBox(
            height: 16,
          ),
          const TitoloSezione(
              icon: Icons.calendar_today_outlined, title: "Prossimi Eventi"),
          const SizedBox(
            height: 16,
          ),
          prossimi(),
          const SizedBox(
            height: 16,
          ),
          const TitoloSezione(
              icon: Icons.warning_amber_outlined, title: "Eventi Scaduti"),
          const SizedBox(
            height: 16,
          ),
          scaduti(),
          const SizedBox(
            height: 16,
          ),
          const TitoloSezione(
              icon: CupertinoIcons.arrow_clockwise, title: "Recenti"),
          const SizedBox(
            height: 16,
          ),
          recenti(),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    ));

Widget preferiti() {
  return Column(
    children: [
      Container(
        width: 80,
        height: 80,
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade600,
                  Colors.blue.shade900,
                ])),
        child: const Center(
            child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        )),
      ),
      const SizedBox(
        height: 4,
      ),
      const Text("Altro")
    ],
  );
}

Widget prossimi() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 8,
            spreadRadius: 1,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.white),
    child: const Center(child: Text("Non ci sono prossimi eventi")),
  );
}

Widget scaduti() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 8,
            spreadRadius: 1,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.white),
    child: Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade300, width: 1))),
        child: Row(
          children: const [
            Text("2 nov",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            SizedBox(
              width: 16,
            ),
            Text("Test esterno",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade300, width: 1))),
        child: Row(
          children: const [
            Text("17 ott",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            SizedBox(
              width: 16,
            ),
            Text("Ritiro pacchi",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade300, width: 1))),
        child: Row(
          children: const [
            Text("8 ago",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            SizedBox(
              width: 16,
            ),
            Text("Incontro in sede",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade300, width: 1))),
        child: Row(
          children: const [
            Text("1 ago",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            SizedBox(
              width: 16,
            ),
            Text("Appuntamento con cliente x",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade300, width: 1))),
        child: Row(
          children: const [
            Text("5 lug",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
            SizedBox(
              width: 16,
            ),
            Text("Test del prodotto",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16))
          ],
        ),
      ),
    ]),
  );
}

Widget recenti() {
  return Column(
    children: [
      Container(
        width: double.infinity,
        // padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 8,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Colors.white),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              // height: 30,
              // width: 30,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.shade600,
                      Colors.blue.shade300,
                    ]),
              ),
              child: const Center(
                  child: Icon(
                Icons.people_alt_outlined,
                color: Colors.white,
              )),
            ),
            const SizedBox(
              width: 16,
            ),
            const Text("Stefano Locati",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
          ],
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      Container(
        width: double.infinity,
        // padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 8,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Colors.white),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              // height: 30,
              // width: 30,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.shade600,
                      Colors.blue.shade300,
                    ]),
              ),
              child: const Center(
                  child: Icon(
                Icons.people_alt_outlined,
                color: Colors.white,
              )),
            ),
            const SizedBox(
              width: 16,
            ),
            const Text("Stefano Locati",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
          ],
        ),
      ),
    ],
  );
}

Widget menu(context) => Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: GridView.count(
        childAspectRatio: 1,
        crossAxisCount: 2,
        children: [
          sectionCard(context, Icons.build, Colors.blue.shade600, "Aziende",
              "/aziende"),
          sectionCard(context, Icons.people, Colors.blue.shade600, "Contatti",
              "/contatti"),
          sectionCard(context, Icons.handshake, Colors.yellow.shade600, "Lead",
              "/leads"),
          sectionCard(context, Icons.track_changes_rounded,
              Colors.yellow.shade600, "Opportunità", "/opportunita"),
          sectionCard(context, Icons.airplane_ticket_outlined,
              Colors.orange.shade600, "Ticket", ""),
          sectionCard(context, Icons.support_agent, Colors.orange.shade600,
              "Customer Service", ""),
        ],
      ),
    );

Widget sectionCard(
  BuildContext context,
  IconData icona,
  Color colore,
  String nome,
  String route,
) =>
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colore,
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                colore,
                colore.withAlpha(127),
              ],
            )),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(16),
              child: Icon(
                icona,
                color: colore,
                size: 40,
              )),
          const SizedBox(
            height: 8,
          ),
          Text(
            nome,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
