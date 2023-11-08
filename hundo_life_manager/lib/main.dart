import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:hundo_life_manager/widgets/note_block.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'widgets/traditional_note.dart';

Future<void> main() async {
  //  WidgetsFlutterBinding.ensureInitialized(); // 必须确保初始化完成
  //  SharedPreferences prefs = await SharedPreferences.getInstance();

  // 从SharedPreferences中获取先前保存的数据
  //  String? savedData = prefs.getString('noteData'); // 替换'keyName'为您的键

  // runApp(MyApp(savedData ?? "null"));
  runApp(const MyApp("Test"));
}

class MyApp extends StatelessWidget {
  final String _savedData;
  const MyApp(this._savedData, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hundo Life Manager',
      theme:
          ThemeData(useMaterial3: true, colorScheme: const ColorScheme.dark()),
      home: MyHomePage(
        title: 'Note',
        savedData: _savedData,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.savedData});

  final String title;
  final String savedData;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return QuillProvider(
        configurations:
            QuillConfigurations(controller: QuillController.basic()),
        child: Column(
          children: [
            const Text("Note"),
            const QuillToolbar(
              configurations: QuillToolbarConfigurations(),
            ),
            QuillEditor.basic(
              configurations: const QuillEditorConfigurations(),
            )
          ],
        ));
    /*ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return const NoteBlock();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Colors.blue,
        );
      },
      itemCount: 4,
    );*/
  }
}
