import 'package:flutter/material.dart';
import 'package:learningflutterproject/chat_page.dart';
import 'package:learningflutterproject/login_page.dart';
import 'package:learningflutterproject/widgets/chat_input.dart';
import 'package:learningflutterproject/widgets/counter_stateful_demo.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: "Chat App",
      theme: ThemeData(primarySwatch: Colors.purple),
      // home:  LoginPage(),
      // home:   CounterStateful(buttonColor: Colors.blue ),
      home: ChatPage(),
    );
  }
}


