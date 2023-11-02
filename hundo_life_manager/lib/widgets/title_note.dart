import 'package:flutter/material.dart';

class TitleNote extends StatefulWidget {
  final Text title;

  const TitleNote({super.key,required this.title});

  @override
  State<TitleNote> createState() => _TitleNoteState();
}

class _TitleNoteState extends State<TitleNote> {
  @override
  Widget build(BuildContext context) {
    return widget.title;
  }
}