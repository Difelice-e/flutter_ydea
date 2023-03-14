class Contatto {
  final String nome, cognome;
  final String? titolo, azienda, email, telefono, cellulare, ruolo, fullName;

  Contatto({
    this.titolo,
    required this.nome,
    required this.cognome,
    this.azienda,
    this.email,
    this.telefono,
    this.cellulare,
    this.ruolo,
    this.fullName,
  });
}