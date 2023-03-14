import 'package:flutter/material.dart';

class TitoloSezione extends StatelessWidget {
  const TitoloSezione({
    Key? key,
    required this.icon, 
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 14),
        const SizedBox(width: 4,),
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
      ],
    );
  }
}