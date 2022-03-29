// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:testpro/signUp.dart';


class signIn extends StatefulWidget {
  signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  final feature = ["Sign In", "Sign Up"];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Colors.white,
            body: i == 0
                ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Padding(
                      padding:  EdgeInsets.only(top: width/10,left: width/50),
                      child: Column(
                        children: [
                          Row(children: [

                            Container(
                              height: height / 19,
                              width: width/1.5,
                              child: ListView.builder(
                                itemCount: feature.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        i = index;
                                      });
                                    },
                                    child: Column(
                                      children: [

                                        Padding(
                                          padding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            feature[index],
                                            style: TextStyle(
                                              color: i == index
                                                  ? Colors.black
                                                  : Colors.grey,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        i == index
                                            ? Container(
                                          height: 3,
                                          width: width / 9,
                                          color: Colors.black,
                                        )
                                            : Container(),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Expanded(child: Container()),
                          ]),

                          Column(
                            children: [
                              Container(
                                width: width / 1.2,
                                height: height / 2.55,
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(top: width/15,left: width/50),
                                      child: Text("E-mail",style: TextStyle(fontSize: width/25),),
                                    ),
                                    SizedBox(
                                      width: width/1.1,
                                      height: height/20,
                                      child: TextField(
                                        // readOnly: true, // * Just for Debug
                                        cursorColor: Colors.black,
                                        style: TextStyle(color: Colors.black),
                                        showCursor: true,
                                        //cursorColor: mainColor,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.only(top: width/15,left: width/50),
                                      child: Text("Password",style: TextStyle(fontSize: width/25),),
                                    ),
                                    SizedBox(
                                      width: width/1.1,
                                      height: height/20,
                                      child: TextField(
                                        obscureText: true,
                                        // readOnly: true, // * Just for Debug
                                        cursorColor: Colors.black,
                                        style: TextStyle(color: Colors.black),
                                        showCursor: true,
                                        //cursorColor: mainColor,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: TextButton(
                                          onPressed: (){

                                      },
                                          child: Text("Forgot Password?"),
                                        style: TextButton.styleFrom(
                                          primary: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),



                  // Bottom
                  i == 0
                      ? Padding(
                    padding:  EdgeInsets.only(top:width/2.5),
                    child: SizedBox(
                      width: width/1.3,
                      height: height/15,
                      child: ElevatedButton(
                        onPressed: (){

                        },
                        child: Text("Continue"),

                      ),
                    ),
                  )

                      : signUp()
                ],
              ),
            )
                : signUp()),
      ),
    );
  }
}
