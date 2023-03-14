import 'package:flutter/material.dart';

class OpzionePipeline{
  final Color colore;
  final String titolo;
  final String? opportunita;
  final String? entrateStimate;
  final String? valoreMedio;

  OpzionePipeline({
    required this.colore,
    required this.titolo,
    this.opportunita,
    this.entrateStimate,
    this.valoreMedio,
  });
}