import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
                child: Image.asset("images/yemekresim.jpeg"),
            ),
            Row(children: [
              Expanded(
                child: SizedBox(
                  height: screenWidth/8,
                  child: TextButton(onPressed:(){
                    print("Beğenildi");
                  }, child:yaziBoyutu("Beğen",screenWidth/25),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: screenWidth/8,
                  child: TextButton(onPressed:(){
                    print("Yorum Yapıldı");
                  }, child:yaziBoyutu("Yorum Yap",screenWidth/25)
                  ),
                ),
              ),
            ],
            ),
            Padding(
              padding:  EdgeInsets.all(screenWidth/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Köfte",
                    style: TextStyle(
                      fontSize: screenWidth/20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  Row(
                    children: [
                      yaziBoyutu("Izgara üzerinde pişirime uygun", screenWidth/25),
                      Spacer(),
                      yaziBoyutu("8 Ağustos", screenWidth/25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(screenHeight/100),
              child: yaziBoyutu("What is Lorem Ipsum Lorem ? \n Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              screenWidth/25),
            )
          ],
        ),
      ),
    );
  }
}
class yaziBoyutu extends StatelessWidget {
  String icerik;
  double yaziBoyut;


  yaziBoyutu(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(
      fontSize: yaziBoyut),
    );
  }
}

