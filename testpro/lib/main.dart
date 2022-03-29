import 'package:flutter/material.dart';
import 'package:testpro/signIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test Pro",
      theme: ThemeData(
        primarySwatch:  Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 50,),
            Image.asset("images/logo.png"),
            Padding(
              padding:  EdgeInsets.only(bottom: screenWidth/8,top: screenWidth/70),
              child: Text("Sağlıklı Bir Yaşam için Test Pro Fitness..."),
            ),

            SizedBox(
              height: screenWidth/10,
              width: screenWidth / 1.5,
              child: ElevatedButton(onPressed: (){

              },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text("Continue with e-mail or Call to action")),
            ),
            Spacer(flex: 50,),
            Padding(
              padding:  EdgeInsets.only(bottom: screenHeight/14),
              child: SizedBox(
                height: screenWidth/10,
                width: screenWidth / 1.5,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> signIn()));
                },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text("Continue without signing up")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
