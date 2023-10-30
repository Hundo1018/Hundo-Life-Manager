import 'package:flutter/material.dart';
import 'package:hundo_life_manager/widgets/cue_note.dart';
import 'package:hundo_life_manager/widgets/note.dart';
import 'package:hundo_life_manager/widgets/summary_note.dart';

class NoteBlock extends StatefulWidget {
  const NoteBlock({super.key});

  @override
  State<NoteBlock> createState() => _NoteBlockState();
}

class _NoteBlockState extends State<NoteBlock> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [CueNote(), Note()],
        ),
        SummaryNote()
      ],
    );
  }
}
