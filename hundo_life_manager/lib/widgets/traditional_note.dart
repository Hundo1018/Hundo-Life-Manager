import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TraditionalNote extends StatefulWidget {
  final String savedData; 
  const TraditionalNote(this.savedData, {super.key});


  @override
  State<StatefulWidget> createState() => _TraditionalNoteState();
}

class _TraditionalNoteState extends State<TraditionalNote> {

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
