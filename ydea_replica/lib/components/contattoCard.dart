import 'package:flutter/material.dart';
import 'package:ydea_replica/models/contatto.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.contact}) : super(key: key);

  final Contatto contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 8,
              spreadRadius: 1,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.pushNamed(context, "/dettaglio-contatto", arguments: contact);
          },
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      contact.fullName ?? "",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    if (contact.azienda != null && contact.azienda != '')
                      cardParam(contact.azienda!, Icons.home), 
                    if (contact.cellulare != null && contact.cellulare != '')
                      cardParam(contact.cellulare!, Icons.phone_android),
                    if (contact.email != null && contact.email != '')
                      cardParam(contact.email!, Icons.mail),
                    if (contact.ruolo != null && contact.ruolo != '')
                      cardParam(contact.ruolo!, Icons.person),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                )),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20)),
                            color: contact.cellulare != '' && contact.cellulare != null ? Colors.blue : Colors.grey.shade500,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 30,
                          )),
                    )),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          color: contact.cellulare != '' && contact.cellulare != null ? Colors.blue : Colors.grey.shade500,
                          child: const Icon(
                            Icons.phone_android,
                            color: Colors.white,
                            size: 30,
                          )),
                    )),
                const SizedBox(
                  width: 2,
                ),
                Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(20)),
                            color: contact.email != '' && contact.email != null ? Colors.blue : Colors.grey.shade500,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Icon(
                            Icons.mail,
                            color: Colors.white,
                            size: 30,
                          )),
                    )),
              ],
            )
          ]),
        ),
      ),
    );
  }
  
  Widget cardParam(String param, IconData icon) => Column(
  children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.blue,
              size: 12,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(param),
          ],
        ),
        const SizedBox(height: 8,)
      ],
    );
}
