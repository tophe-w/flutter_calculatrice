import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/config/friends_provider.dart';
import 'package:flutter_102_calculatrice/features/profil/models/custom_card_model.dart';
import 'package:provider/provider.dart';

class FormDuoligo extends StatefulWidget {
  final CustomCardModel? friend;

  FormDuoligo({Key? key, this.friend}) : super(key: key);

  @override
  _FormDuoligoState createState() => _FormDuoligoState();
}

class _FormDuoligoState extends State<FormDuoligo> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _texteController;
  late TextEditingController _avatarController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.friend?.name);
    _texteController = TextEditingController(text: widget.friend?.texte);

    String imagePath = '';
    if (widget.friend?.avatar != null) {
      String imageString = widget.friend!.avatar.image.toString();
      List<String> parts = imageString.split('"');
      if (parts.length > 1) {
        imagePath = parts[1];
      }
    }
    _avatarController = TextEditingController(text: imagePath);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _texteController.dispose();
    _avatarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.friend == null ? 'Add New Friend' : 'Edit Friend'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(label: Text('Name')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Merci de renseigner le nom';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: _avatarController,
                decoration: InputDecoration(label: Text('Avatar')),
              ),
              TextFormField(
                controller: _texteController,
                decoration: InputDecoration(label: Text('Texte')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Merci de renseigner le texte';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState?.save();

                    final updatedFriend = CustomCardModel(
                      avatar: _avatarController.text.isNotEmpty
                          ? Image.asset(_avatarController.text)
                          : widget.friend?.avatar ??
                              Image.asset('lib/assets/images/chat.png'),
                      name: _nameController.text,
                      texte: _texteController.text,
                    );

                    if (widget.friend == null) {
                      context.read<FriendsProvider>().addFriend(updatedFriend);
                    } else {
                      context
                          .read<FriendsProvider>()
                          .updateFriend(widget.friend!, updatedFriend);
                    }

                    Navigator.pop(context);
                  }
                },
                child: Text(widget.friend == null ? 'Valider' : 'Modifier'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
