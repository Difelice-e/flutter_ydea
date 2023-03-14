import 'package:flutter/material.dart';
import 'package:ydea_replica/models/opzionePipeline.dart';

class PipelineCard extends StatelessWidget {
  const PipelineCard({Key? key, required this.pipeline}) : super(key: key);

  final OpzionePipeline pipeline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(pipeline.titolo,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 3,
                )
              ],
            ),
            child: Row(
              children: [
                Expanded(
                    child: Center(
                  child: Column(children: [
                    Text(
                      pipeline.opportunita ?? "0",
                      style: TextStyle(
                          color: pipeline.colore,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4,),
                    const Text(
                      "Opportunità",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )
                  ]),
                )),
                Container(
                  width: 1,
                  height: 60,
                  color: Colors.grey,
                ),
                Expanded(
                    child: Center(
                  child: Column(children: [
                    Text(
                      "€ ${pipeline.entrateStimate}",
                      style: TextStyle(
                          color: pipeline.colore,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4,),
                    const Text(
                      "Entrate stimate",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )
                  ]),
                )),
                Container(
                  width: 1,
                  height: 60,
                  color: Colors.grey,
                ),
                Expanded(
                    child: Center(
                  child: Column(children: [
                    Text(
                      "€ ${pipeline.valoreMedio}",
                      style: TextStyle(
                          color: pipeline.colore,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4,),
                    const Text(
                      "Valore medio",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )
                  ]),
                )),
                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    width: 26,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: pipeline.colore,
                    ),
                    child: const Center(
                      child: Icon(Icons.chevron_right, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
