import 'package:flutter/material.dart';
import 'package:learningflutterproject/chat_page.dart';
import 'package:learningflutterproject/utils/spaces.dart';
import 'package:learningflutterproject/utils/textfield_style.dart';
import 'package:learningflutterproject/widgets/login_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formkey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context)=>ChatPage(username: userNameController.text,)));
      Navigator.pushReplacementNamed(context, '/chat',arguments: '${userNameController.text}');
    print('login ');
    }else
    {
    print('note succeful ~!');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let\'s sign you in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5),
                ),
                Text(
                  'Welcome back! \n You\'ve been missed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.blue),
                ),
                Image.asset(
                  'assets/img.png',
                  height: 200,
                ),


                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      LoginTextField(
                        hintText:"Enter your username",
                        validator: (value) {
                          if (value != null && value.isNotEmpty &&
                              value.length < 5) {
                            return "Your username should be more then 5 character";
                          } else if (value != null && value.isEmpty) {
                            return "Please type username";
                          }
                        },
                        controller: userNameController,


                      ),
                      verticalSapcing(1),


                      LoginTextField(
                        hasAsterisks: true,
                        controller: passwordController,
                     hintText: 'Enter your password',
                      ),
                    ],
                  ),
                ),
                verticalSapcing(1),

                ElevatedButton(
                    onPressed: () {
                      loginUser(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w300),
                    )),
                InkWell(
                  splashColor: Colors.red,
                  onDoubleTap: () {
                    print('on double tab');
                  },
                  onLongPress: () {
                    print('On logn press');
                  },
                  onTap: () {
                    print('link click');
                  },
                  child: Column(
                    children: [
                      Text('Find us on'),
                      Text('https://poojabhumik.com'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
