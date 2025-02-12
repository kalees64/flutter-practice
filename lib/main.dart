import 'package:first_flutter_app/src/common/widgets/customHeadings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VK64",
      home: Scaffold(
          appBar: AppBar(
            title: Text("VK64"),
          ),
          body: Column(
            children: [
              h1(text: "My first Flutter app with custom H1 component"),
              h2(text: "My first Flutter app with custom H2 component"),
              h3(text: "My first Flutter app with custom H3 component"),
              h4(text: "My first Flutter app with custom H4 component"),
              h5(text: "My first Flutter app with custom H5 component"),
            ],
          )),
    );
  }
}
