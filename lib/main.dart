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
  List<int> number = [];
  void onClicked() {
    setState(() {
      number.add(number.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Click Count",
                style: TextStyle(fontSize: 30),
              ),
              for (var n in number)
                Text(
                  "$n",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              IconButton(
                onPressed: () {
                  onClicked();
                },
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
