import 'package:flutter/material.dart';
import 'package:ydea_replica/models/contatto.dart';

class ContattoCreazione extends StatelessWidget {
  ContattoCreazione({Key? key}) : super(key: key);

  final TextEditingController _titoloController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cognomeController = TextEditingController();
  final TextEditingController _aziendaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cellulareController = TextEditingController();
  final TextEditingController _ruoloController = TextEditingController();

  void createUser(BuildContext context) {
    final nome = _nomeController.text;
    final cognome = _cognomeController.text;
    if (nome != '' && cognome != '') {
      final titolo = _titoloController.text;
      final azienda = _aziendaController.text;
      final email = _emailController.text;
      final cellulare = _cellulareController.text;
      final ruolo = _ruoloController.text;
      final fullName = '$nome $cognome';

      final newUser = Contatto(
        nome: nome, 
        cognome: cognome, 
        titolo: titolo, 
        azienda: azienda, 
        email: email,
        cellulare: cellulare, 
        ruolo: ruolo,
        fullName: fullName
      );
      Navigator.pop(context, newUser);
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Crea un nuovo contatto"),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
              textFormComponent(_titoloController, "Titolo"),
              const SizedBox(height: 16,),
              textFormComponent(_nomeController, "* Nome"),
              const SizedBox(height: 16,),
              textFormComponent(_cognomeController, "* Cognome"),
              const SizedBox(height: 16,),
              textFormComponent(_aziendaController, "Azienda"),
              const SizedBox(height: 16,),
              textFormComponent(_emailController, "Email"),
              const SizedBox(height: 16,),
              textFormComponent(_cellulareController, "Cellulare"),
              const SizedBox(height: 16,),
              textFormComponent(_ruoloController, "Ruolo"),
              const SizedBox(height: 16,),
              MaterialButton(
                onPressed: () => {
                  createUser(context)
                }, 
                child: const Text("Crea")
              )
            ],),
          ),
      )
    );
  }

  Widget textFormComponent(TextEditingController controller, String hintText, {bool required = false}) => TextFormField(
    controller: controller,
    decoration: InputDecoration(hintText: hintText),
  );
}
