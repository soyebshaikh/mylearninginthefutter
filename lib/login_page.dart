import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Text(
            'Let\'s sign you in',

            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5),
          ),
          Text(
            'Welcome back! \n You\'ve been missed',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
          ),
          Image.network(
            'https://t3.ftcdn.net/jpg/01/78/65/02/360_F_178650212_oePgGaIhKUhz0cIg2bLBGsFsdbWs5Xwj.jpg',
            height: 100,
          ),
      ],
    ),
        ));
  }
}
