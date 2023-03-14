import 'package:flutter/material.dart';
import 'package:ydea_replica/models/lead.dart';

class LeadCard extends StatelessWidget {
  const LeadCard({Key? key, required this.lead}) : super(key: key);

  final Lead lead;

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
            Navigator.pushNamed(context, "/dettaglio-contatto",
                arguments: lead);
          },
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      lead.nome,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    if (lead.statoLead != null)
                      Text(
                        lead.statoLead!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    const SizedBox(
                      height: 16,
                    ),
                    if (lead.azienda != null && lead.azienda != '')
                      cardParam(lead.azienda!, Icons.home),
                    if (lead.cellulare != null && lead.cellulare != '')
                      cardParam(lead.cellulare!, Icons.phone_android),
                    if (lead.email != null && lead.email != '')
                      cardParam(lead.email!, Icons.mail),
                    cardParam(lead.data, Icons.calendar_month),
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
                            color:
                                lead.cellulare != '' && lead.cellulare != null
                                    ? Colors.blue
                                    : Colors.grey.shade500,
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
                          color: lead.cellulare != '' && lead.cellulare != null
                              ? Colors.blue
                              : Colors.grey.shade500,
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
                            color: lead.email != '' && lead.email != null
                                ? Colors.blue
                                : Colors.grey.shade500,
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
          const SizedBox(
            height: 8,
          )
        ],
      );
}
