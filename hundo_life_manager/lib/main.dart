import 'package:flutter/material.dart';
import 'package:hundo_life_manager/widgets/note_block.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'widgets/traditional_note.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized(); // 必须确保初始化完成
  // SharedPreferences prefs = await SharedPreferences.getInstance();

  // 从SharedPreferences中获取先前保存的数据
  // String? savedData = prefs.getString('noteData'); // 替换'keyName'为您的键

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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String savedData;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return const NoteBlock();
      },
      itemCount: 3,
      padding: const EdgeInsets.symmetric(vertical: 32),
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Colors.blue,
        );
      },
    );
      }
}
