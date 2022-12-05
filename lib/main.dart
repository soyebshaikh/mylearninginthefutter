import 'package:flutter/material.dart';
import 'package:learningflutterproject/chat_page.dart';
import 'package:learningflutterproject/login_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: ChatPage()
    );
  }
}


