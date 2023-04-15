// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();

  var passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 140),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Image(
                      height: 160,
                      width: 300,
                      image:
                          AssetImage('assests/logo-scs-key1482016.png')),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          label: Text('Email'),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    child: TextField(
                      keyboardType:TextInputType.visiblePassword,
                      controller: passWord,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          label: Text('Password'),
                          
                          border: OutlineInputBorder(
                              gapPadding: 10.0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    )),
                SizedBox(height: 70),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    
                      style: ButtonStyle(
                        
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff1454b6))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 100),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
