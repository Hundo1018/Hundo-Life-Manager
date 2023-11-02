import 'package:flutter/material.dart';
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
    return GridView.extent(
        maxCrossAxisExtent: 500,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children:
            List.generate((30), (i) => Image.asset('assets/images/dog.png')),
            );

    /*Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: TraditionalNote(widget.savedData));*/
  }
}
