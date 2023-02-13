import 'package:bewr_home/core/constants/l10n.dart';
import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
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
                  decoration: InputDecoration(
                    labelText: context.loc.feedbackTitle,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return context.loc.feedbackTitlePlaceholder;
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: context.loc.feedbackEmail,
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && !value.contains('@')) {
                      return context.loc.feedbackEmailPlaceholder;
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: context.loc.feedbackDescription,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return context.loc.feedbackDescriptionPlaceholder;
                    }
                    return null;
                  },
                  onSaved: (value) {},
                  maxLines: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(context.loc.feedbackAttachement),
                    TextButton(
                      child: Text(context.loc.feedbackAttachementPlaceholder),
                      // TODO: Implement file picker here
                      onPressed: () {
                        const snackBar = SnackBar(
                          content: Text('Attach a file here'),
                        );
                        // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                        tooltip: 'Delete attachment', // TODO: localize
                        // TODO: Implement delete attachment
                        onPressed: () {
                          const snackBar = SnackBar(
                            content: Text('Delete the attachment here'),
                          );
                          // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                    );
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: TextButton(
                    child: Text(context.loc.feedbackSubmit),
                    // TODO: Implement send feedback
                    onPressed: () {
                      const snackBar = SnackBar(
                        content: Text('Submit the feedback here'),
                      );
                      // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
