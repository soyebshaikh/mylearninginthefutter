import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
   final _formkey=GlobalKey<FormState>();

  void loginUser() {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      print(userNameController.text);
      print(passwordController.text);
      print('login ');
    }else
      {
        print('note succeful ~!');
      }
  }

  final userNameController= TextEditingController();
   final passwordController= TextEditingController();

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
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz2kiIIUjfhIlFjjei6vHQo3MyuXE7AO2N92NmtooRP1Hae7wH0qyTRTnrr48wtUkzhvg&usqp=CAU',
              height: 200,
            ),




            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(value!=null && value.isNotEmpty && value.length<5){
                        return "Your username should be more then 5 character";
                      }else if(value!= null && value.isEmpty){
                        return"Please type username";
                      }
                    },
                    controller:userNameController ,

                    decoration: InputDecoration(
                      hintText: 'Add your Username' ,
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),



                  TextFormField(
                    controller:passwordController ,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Add your Username' ,
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),


            ElevatedButton(
                onPressed: loginUser,
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
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
