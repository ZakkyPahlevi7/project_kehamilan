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
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 100, 10),
                child: Text(
                  'Hari Pertama Haid Terakhir (HPHT)',
                  style: GoogleFonts.poppins(
                      fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'dd/mm/yyyy',
                        suffixIcon: Icon(Icons.date_range)),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 180, 10),
                child: Text(
                  'Lama siklus haid rata rata',
                  style: GoogleFonts.poppins(
                      fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan jumlah hari',
                    ),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(
                        187,
                        23,
                        187,
                        23,
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  onPressed: () {},
                  child: Text(
                    'HITUNG',
                    style: GoogleFonts.poppins(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
