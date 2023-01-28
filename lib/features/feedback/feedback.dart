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
                    labelText: 'Titre du feedback', // TODO: Localize
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer un titre'; // TODO: Localize
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Adresse email (facultatif)', // TODO: Localize
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && !value.contains('@')) {
                      return 'Veuillez entrer une adresse email valide'; // TODO: Localize
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Description du problème', // TODO: Localize
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une description'; // TODO: Localize
                    }
                    return null;
                  },
                  onSaved: (value) {},
                  maxLines: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Pièces jointes'), // TODO: Localize
                    TextButton(
                      child: const Text(
                          'Ajouter une pièce jointe'), // TODO: Localize
                      onPressed: () {
                        // TODO: Implement file picker
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
                          // TODO: Implement delete attachment
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
                      // TODO: Implement send feedback
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

// Attachment model
class Attachment {
  final String name;
  final String path;

  Attachment({
    required this.name,
    required this.path,
  });
}
