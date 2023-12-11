import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minggu_14/model/color_model.dart';
import 'package:minggu_14/service/fetch_data.dart';
import 'package:minggu_14/widget/data_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ColorModel> datas = [];

  getData() async {
    datas = await FetchData().fetchData();

    if (datas.isNotEmpty) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          title: Text(
            'Rest api',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: datas.isNotEmpty
            ? ListView(
                padding: const EdgeInsets.all(20),
                children: datas.map((data) {
                  return DataView(data: data);
                }).toList(),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
