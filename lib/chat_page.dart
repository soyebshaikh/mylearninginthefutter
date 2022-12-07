import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learningflutterproject/widgets/chat_bubble.dart';
import 'package:learningflutterproject/widgets/chat_input.dart';

class  ChatPage extends StatelessWidget {

  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username= ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Hi $username',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {

          Navigator.pushReplacementNamed(context,'/');

                print('Icon pressed !');
              },

              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ChatBubble(
                      alignment:index %2==0? Alignment.centerLeft: Alignment.centerRight,
                      message: 'Hello This is Soyeb');
                }),


          ),
          ChatInput(),
        ],
      ),
    );
  }
}
