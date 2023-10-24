import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Note extends StatefulWidget {
  final String savedData; 
  const Note(this.savedData, {super.key});


  @override
  State<StatefulWidget> createState() => _NoteState();
}

class _NoteState extends State<Note> {

  @override
  Widget build(BuildContext context) {
    TextField textField = TextField(
      maxLines: null,
      onChanged:(value) async {
        //HACK:拆成function好像有閉包問題?
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('noteData', value);
      },
      controller: TextEditingController(),
    );
    textField.controller?.text = widget.savedData;
    return textField;
  }
}
