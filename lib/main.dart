import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double hasil = 0;
  String pesan = "";

  TextEditingController diagonal1 = TextEditingController();
  TextEditingController diagonal2 = TextEditingController();

  void hitungLuas() {
    setState(() {
      double inputdiagonal1 = double.tryParse(diagonal1.text) ?? 0;
      double inputdiagonal2 = double.tryParse(diagonal2.text) ?? 0;

      double hasilPerhitungan = inputdiagonal1 * inputdiagonal2 / 2;
      print(hasilPerhitungan);
      hasil = hasilPerhitungan;
      pesan = "Hasil luas layang-layang tersebut adalah : $hasil";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aplikasi Menghitung Luas Layang Layang",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: diagonal1,
                  decoration: InputDecoration(
                    labelText: "Input Diagoal 1",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: diagonal2,
                  decoration: InputDecoration(
                    labelText: "Input Diagoal 2",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 30),
                Text(
                  pesan,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                ElevatedButton(onPressed: hitungLuas, child: Text("Hitung")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
