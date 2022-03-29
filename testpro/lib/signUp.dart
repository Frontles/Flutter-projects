
import 'package:flutter/material.dart';
import 'package:testpro/signIn.dart';


class signUp extends StatefulWidget {
  signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final feature = ["Sign In", "Sign Up"];

  int i = 1;
  bool? kontrol = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Colors.white,
            body: i == 1
                ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Padding(
                      padding:  EdgeInsets.only(top: width/10,left: width/50),
                      child: Column(
                        children: [

                          // TabBar Code
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
                                  child: Text("Create Password",style: TextStyle(fontSize: width/25),),
                                ),
                                SizedBox(
                                  width: width/1.1,
                                  height: height/20,
                                  child: TextField(
                                    obscureText: true,
                                      cursorColor: Colors.black,
                                      style: TextStyle(color: Colors.black),
                                      showCursor: true,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                                      ),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: width/15,left: width/50),
                                  child: Text("Re-write Password",style: TextStyle(fontSize: width/25),),
                                ),
                                SizedBox(
                                  width: width/1.1,
                                  height: height/20,
                                  child: TextField(
                                    obscureText: true,
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
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: width/1.2,
                    child: Padding(
                      padding: EdgeInsets.only(top: width/5),
                      child: CheckboxListTile(
                        title: Text("Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Terms of Use augue erim. Pulvinar Privacy Notice lacinia at.",
                        style: TextStyle(
                          fontSize: width/35,

                        ),) ,
                        value: kontrol ,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? veri){
                          setState(() {
                            kontrol = veri;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(width/30),
                    child: SizedBox(
                      width: width/1.3,
                      height: height/15,
                      child: ElevatedButton(
                          onPressed: (){

                          },
                          child: Text("Continue"),

                      ),
                    ),
                  ),
                ],
              ),
            )
                : signIn(),
          floatingActionButton: SizedBox(width:width/20,
            child: FloatingActionButton(
              onPressed: (){
                Navigator.pop(context);
              },
              tooltip: 'Back',

              foregroundColor: Colors.white,
              backgroundColor: Colors.grey,
              child: const Icon(Icons.keyboard_arrow_left,),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        ),
      ),
    );
  }
}
