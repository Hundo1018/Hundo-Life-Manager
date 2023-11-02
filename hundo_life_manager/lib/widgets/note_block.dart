import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hundo_life_manager/widgets/cue_note.dart';
import 'package:hundo_life_manager/widgets/note.dart';
import 'package:hundo_life_manager/widgets/summary_note.dart';
import 'package:hundo_life_manager/widgets/title_note.dart';
import 'package:url_launcher/url_launcher.dart';

class NoteBlock extends StatefulWidget {
  const NoteBlock({super.key});

  @override
  State<NoteBlock> createState() => _NoteBlockState();
}

class _NoteBlockState extends State<NoteBlock> {
  @override
  Widget build(BuildContext context) {
    const double cueScale = 0.5,
        titleScale = 0.5,
        noteScale = 0.5,
        summaryScale = 0.5;
    return Column(
      children: [
        Row(
          children: [
            CueNote(
                content: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: '關鍵字1\r\n',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              if (await canLaunchUrl(Uri.parse(""))) {
                                launchUrl(Uri.parse(""));
                              }
                            }),
                      const TextSpan(text: '關鍵字2\r\n'),
                      const TextSpan(text: '關鍵字3\r\n'),
                      const TextSpan(text: '關鍵字4\r\n'),
                      const TextSpan(text: '關鍵字5\r\n'),
                    ]),
                    softWrap: true,
                    textWidthBasis: TextWidthBasis.parent,
                    textScaleFactor: cueScale)),
            const Column(children: [
              TitleNote(
                  title: Text.rich(
                TextSpan(
                  text: "標題文字只會有一行但可能很長",
                ),
                softWrap: false,
                textScaleFactor: titleScale,
              )),
              Note(
                  content: Text.rich(
                      TextSpan(
                          text:
                              "內容文字可能很長而且在奇怪的地方換行\r\n這是第二行\r\n第三行\r\n4\r\n尾行"),
                      softWrap: true,
                      textScaleFactor: noteScale))
            ]),
          ],
        ),
        const SummaryNote(
            content: Text.rich(
          TextSpan(text: 'Summary也會很長但在最下面通常使用幾句話來總結\r\n可能有換行'),
          // softWrap: true,
          textScaleFactor: summaryScale,
        ))
      ],
    );
  }
}
