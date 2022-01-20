import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 170, 10),
                child: Text(
                  'Hari Pertama Haid Terakhir (HPHT)',
                  style: GoogleFonts.poppins(
                      fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  height: 45,
                  margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
                  child: TextField(
                    cursorHeight: 30,
                    style: TextStyle(height: 1.5),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'dd/mm/yyyy',
                        hintStyle: GoogleFonts.poppins(fontSize: 16),
                        suffixIcon: Icon(Icons.date_range)),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 235, 10),
                child: Text(
                  'Lama siklus haid rata rata',
                  style: GoogleFonts.poppins(
                      fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  height: 45,
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                  child: TextField(
                    cursorHeight: 30,
                    style: TextStyle(height: 1.5),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan jumlah hari',
                    ),
                  )),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 28, vertical: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  onPressed: () {},
                  child: Text(
                    'HITUNG',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
