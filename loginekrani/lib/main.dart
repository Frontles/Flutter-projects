import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var screenInfo = MediaQuery.of(context) ;
    final double  screenHeight = screenInfo.size.height;
    final double  screenWidth = screenInfo.size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth/5,
                  child: Image.asset("images/logo.png"),
              ),
              Padding(
                padding:  EdgeInsets.all(screenHeight/40),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(screenHeight/40),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre ",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(screenHeight/40),
                child: SizedBox(
                  width: screenWidth/1.2,
                  height: screenHeight/ 12,
                  child: ElevatedButton(onPressed: (){
                    print("Giriş Yapılıyor");
                  }, child: Text("GİRİŞ YAP",
                    style: TextStyle(
                        fontSize: screenWidth/25
                    ),
                  ),
                  ),
                ),
              ),
               GestureDetector(
                 onTap:(){
                   print("Yardım Alındı");
                 },
                 child: Text("Yardım ?",
                   style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: screenWidth/25
                   ),
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
