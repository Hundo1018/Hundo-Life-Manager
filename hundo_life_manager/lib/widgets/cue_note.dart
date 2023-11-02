import 'package:flutter/material.dart';

class CueNote extends StatefulWidget {
  final Text content;
  const CueNote({super.key,required this.content});

  @override
  State<CueNote> createState() => _CueNoteState();
}

class _CueNoteState extends State<CueNote> {
  @override
  Widget build(BuildContext context) {
    return widget.content;
  }
}