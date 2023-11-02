import 'package:flutter/material.dart';

class SummaryNote extends StatefulWidget {
  final Text content;
  const SummaryNote({super.key, required this.content});
  @override
  State<SummaryNote> createState() => _SummaryNoteState();
}

class _SummaryNoteState extends State<SummaryNote> {
  @override
  Widget build(BuildContext context) {
    return widget.content;
  }
}
