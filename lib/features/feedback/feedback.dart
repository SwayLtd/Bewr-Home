import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();
  final List<Attachment> _attachments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Titre du feedback',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer un titre';
                    }
                    return null;
                  },
                  onSaved: (value) {
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Adresse email (facultatif)',
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && !value.contains('@')) {
                      return 'Veuillez entrer une adresse email valide';
                    }
                    return null;
                  },
                  onSaved: (value) {
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Description du problème',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une description';
                    }
                    return null;
                  },
                  onSaved: (value) {
                  },
                  maxLines: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Pièces jointes'),
                    TextButton(
                      child: const Text('Ajouter une pièce jointe'),
                      onPressed: () {
                        // Ouvrir un sélecteur de fichier et ajouter le fichier sélectionné à la liste des pièces jointes ici
                        // ...
                      },
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _attachments.length,
                  itemBuilder: (context, index) {
                    final attachment = _attachments[index];
                    return ListTile(
                      leading: const Icon(Icons.attach_file),
                      title: Text(attachment.name),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Supprimer la pièce jointe de la liste ici
                          // ...
                        },
                      ),
                    );
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: TextButton(
                    child: const Text('Envoyer'),
                    onPressed: () {
                          //if (_formKey.currentState.validate()) {
                          // Envoyer le feedback ici
                          // ...
                          //}
                        },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Attachment {
  final String name;
  final String path;

  Attachment({
    required this.name,
    required this.path,
  });
}
