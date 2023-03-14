import 'package:flutter/material.dart';
import 'package:ydea_replica/models/opportunita.dart';

class OpportunitaCard extends StatelessWidget {
  const OpportunitaCard({Key? key, required this.opportunita})
      : super(key: key);

  final Opportunita opportunita;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Container(width: 2, height: 128, color: Colors.grey.shade700)
            ],
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  opportunita.dataChiusura,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    width: double.infinity,
                    // padding: const EdgeInsets.symmetric(
                    //     vertical: 10),
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
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 110,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    opportunita.nome,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons
                                                      .monetization_on_outlined,
                                                  color: Colors.grey.shade300,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  opportunita.entrateStimate ??
                                                      "-",
                                                  style: const TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.balance,
                                                  color: Colors.grey.shade300,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "${opportunita.probabilita}%",
                                                  style: const TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.factory_outlined,
                                                  color: Colors.grey.shade300,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  opportunita.anagrafica ?? "-",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  color: Colors.grey.shade300,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  opportunita.contatto ?? "-",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: 3,
                                            color: Colors.green,
                                          )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: 3,
                                            color: Colors.green,
                                          )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: 3,
                                            color: Colors.green,
                                          )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: 3,
                                            color: Colors.green,
                                          )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: 3,
                                            color: Colors.green,
                                          )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: 3,
                                            color: Colors.green,
                                          )),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Container(
                                            height: 3,
                                            color: Colors.blue,
                                          )),
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
