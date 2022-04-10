import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocer/screens/homepage.dart';

import 'login.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

String _email = " ";
String _password = " ";
String _cmpassword = " ";

bool _signInLoader = false;

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Center(
                  child: Text(
                    'Sign up with your email and password',
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
                    onChanged: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
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
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                    decoration: kcontainerdecoration.copyWith(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        suffixIcon: Icon(Icons.visibility)),
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
                    onChanged: (value) {
                      setState(() {
                        _cmpassword = value;
                      });
                    },
                    decoration: kcontainerdecoration.copyWith(
                        labelText: 'Confirm Password',
                        hintText: 'Enter your password',
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () async {
                    setState(() {
                      _signInLoader = true;
                    });
                    print("Sign in button pressed");
                    print(_email + " " + _password);
                    if (_cmpassword != _password) {
                      signInError(context, "The two passwords don't match");
                    } else if (!_email.contains('@') ||
                        !_email.contains('.com')) {
                      signInError(context, "Please enter a valid email");
                    } else if (_password.length < 8) {
                      signInError(context, "Password too short");
                    } else {
                      try {
                        UserCredential newUser = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _email, password: _password);
                        print("User Created");
                        Navigator.pop(context);
                      } catch (e) {
                        print(e);
                        showAlertDialog(context);
                      }
                    }
                    setState(() {
                      _signInLoader = false;
                    });
                  },
                  child: Container(
                    child: Center(
                        child: (_signInLoader)
                            ? CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white),
                              )
                            : Text(
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

signInError(BuildContext context, String message) {
  Widget continueButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Error"),
    content: Text(message),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
