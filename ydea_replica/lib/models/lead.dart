class Lead {
  final String nome, data;
  final String? azienda, cellulare, email, statoLead;

  Lead({
    required this.nome,
    required this.data,
    this.azienda,
    this.cellulare,
    this.email,
    this.statoLead,
  });
}
