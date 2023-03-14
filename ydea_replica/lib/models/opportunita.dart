

class Opportunita {
  Opportunita({
    this.id,
    required this.nome,
    required this.dataChiusura,
    this.entrateStimate,
    this.origine,
    this.assegnatoA,
    this.contatto,
    this.probabilita,
    required this.statoVendita,
    this.anagrafica,
    this.date,
    this.pipelineId,
    this.appAccountId,
  });

  final int? id;
  final String nome;
  final String dataChiusura;
  final String? origine;
  final dynamic assegnatoA;
  final String? contatto;
  final String? entrateStimate;
  final int? probabilita;
  late final String statoVendita;
  final String? anagrafica;
  final List<DateTime?>? date;
  final int? pipelineId;
  final int? appAccountId;
}