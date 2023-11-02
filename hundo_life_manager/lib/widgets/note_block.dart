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
          children: [
            CueNote(content: 'Cue\r\nCue\r\nCue\r\n'),
            Note(
              content: Text.rich(TextSpan(
                children: <InlineSpan>[
                  TextSpan(text: 'Flutter is\r\nthe best'),
                  WidgetSpan(
                      child: SizedBox(
                    width: 120,
                    height: 50,
                    child: Card(
                        color: Colors.blue,
                        child: Center(child: Text('Hello World!'))),
                  )),
                  TextSpan(text: "\r\nasd")
                ],
              )),
            )
          ],
        ),
        SummaryNote(content: 'Summary\r\nSummary\r\nSummary\r\n')
      ],
    );
  }
}
