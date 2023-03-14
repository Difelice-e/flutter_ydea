class Azienda {
  final String nome, titolare;
  final String? cellulare, sitoWeb, sede, ruolo;

  Azienda({
    required this.nome,
    required this.titolare,
    this.cellulare,
    this.sitoWeb,
    this.sede,
    this.ruolo,
  });
}
