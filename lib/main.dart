import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  String title = 'Usia Kehamilan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 125, 10),
              child: Text('Hari Pertama Haid Terakhir (HPHT)', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            ),
           Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'dd/mm/yyyy'),
            )
           ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 210, 10),
              child: Text('Lama siklus haid rata rata', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            ),
           Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Masukkan jumlah hari'),
            )
           ),
           Container(
             margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
             child: RaisedButton(onPressed: (){},
             color: Color(0xff2D9CDB),
             child: Text('Hitung', style: TextStyle(color: Colors.white),)
             ),
           )
          ],
        ),
      )
    );
  }
}
