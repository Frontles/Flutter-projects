import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'İlham Ver'),
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
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: screenHeight/100, bottom: screenHeight/100),
            child: SizedBox(
              width: screenWidth/5,
              child: Image.asset(
                  "images/stevejobs.png",

      ),
            ),
          ),
          Text(
              "Steve Jobs",
              style: TextStyle(
              color: Colors.red,
              fontSize: screenWidth/25,
              fontWeight: FontWeight.bold
              )
          ),
          Spacer(),
          Text("Dünyayı değiştirebileceklerini düşünecek kadar çılgın olan insanlar, bunu yapan insanlardır.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth/25,
            ),
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(top: screenHeight/100),
            child: SizedBox(
              width: screenWidth/2,

              child: ElevatedButton(
                child: Text("İlham Ver",
                  style: TextStyle(
                    fontSize: screenWidth/25,
                  ),
                ),
                onPressed:(){
                print("İlham verildi");
              },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
