// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Center(
                  child: Text(
                    'Sign in with your email and password or continue with social media',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Theme(
                  data: ThemeData(
                    colorScheme: ThemeData().colorScheme.copyWith(
                          primary: Colors.green,
                        ),
                  ),
                  child: TextField(
                    cursorColor: Colors.green,
                    decoration: kcontainerdecoration.copyWith(
                        hintText: 'Enter your email'),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Theme(
                  data: ThemeData(
                    colorScheme: ThemeData().colorScheme.copyWith(
                          primary: Colors.green,
                        ),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    cursorColor: Colors.green,
                    decoration: kcontainerdecoration.copyWith(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.green,
                            value: value,
                            onChanged: (bool? newValue) {
                              setState(() {
                                value = newValue!;
                              });
                            }),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.shade800),
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      'Continue as guest',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.green.shade800,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/124/124010.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      backgroundImage: NetworkImage(
                          'https://www.iconpacks.net/icons/2/free-twitter-logo-icon-2429-thumb.png'),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.green),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String t = "don't have a account";
Decoration ktextfielddecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(0),
    border: Border.all(color: Colors.white, width: 0));
InputDecoration kcontainerdecoration = InputDecoration(
  labelText: 'Email',
  suffixIconColor: Colors.green,
  //icon: Icon(Icons.email),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Enter your email',
  hintStyle: TextStyle(fontSize: 15),
  suffixIcon: Icon(
    Icons.mail_outline,
    size: 20,
    //color: Colors.green,
  ),
  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
);
