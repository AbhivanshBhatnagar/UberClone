import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 30.0),
                Image(
                  image: AssetImage('images/logo.png'),
                  alignment: Alignment.center,
                  width: 300.0,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: "BoltRegular",
                      fontWeight: FontWeight.w500,
                      fontSize: 45.0),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: "Enter Email",
                            labelStyle: TextStyle(
                                fontSize: 20.0, fontFamily: 'BoltRegular'),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 20.0)),
                      ),
                      TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: "Enter Password",
                            labelStyle: TextStyle(
                                fontSize: 20.0, fontFamily: 'BoltRegular'),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 20.0)),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),
                // RaisedButton(
                //   onPressed: null,
                //   color: Colors.yellow,
                //   textColor: Colors.black,
                //   on
                //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                //   child: Text(
                //     'Login',
                //     style: TextStyle(fontSize: 20.0, fontFamily: "BoltSemiBold"),
                //   ),
                // )
                ElevatedButton(
                  onPressed: () {
                    print("Logged In");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'BoltSemiBold',
                        color: Colors.black),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  ),
                ),
                SizedBox(
                  height: 135.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "New User? Register Here.",
                    style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'BoltSemiBold',
                        color: Colors.black),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
