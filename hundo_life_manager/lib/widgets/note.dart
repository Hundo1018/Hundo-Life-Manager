import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  final Text content;
  const Note({super.key, required this.content});

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return widget.content;
  }
}
