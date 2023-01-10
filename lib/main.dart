import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: Padding(
          //좌 우 패딩 horizontal
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hey, Selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Welcone back",
                        style: TextStyle(
                          // 투명도 0.5
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 120),
              Text(
                "Total Balance",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                // 달러 표기를 사용하기 위해서 \가 필요함.
                "\$5 194 482",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  _buildCustomButton(
                    text: "Transfer",
                    bgColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  const SizedBox(width: 30),
                  _buildCustomButton(
                    text: "Request",
                    bgColor: const Color(0xff1F2123),
                    textColor: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomButton({required String text, required Color bgColor, required Color textColor}) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
