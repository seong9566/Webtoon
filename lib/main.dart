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
        body: SingleChildScrollView(
          child: Padding(
            //좌 우 패딩 horizontal
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
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
                const SizedBox(height: 70),
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
                ),
                const SizedBox(height: 100),
                Row(
                  // 세로 중앙에 있던 글을 아래로 맞춰줌 - Cross
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildCurrencyCard(
                  isInverted: false,
                  name: "Euro",
                  code: "EUR",
                  amount: "6 428",
                  icon: Icons.euro_rounded,
                ),
                Transform.translate(
                  offset: const Offset(0, -20),
                  child: _buildCurrencyCard(
                    isInverted: true,
                    name: "BitCoin",
                    code: "BTC",
                    amount: "8 762",
                    icon: Icons.currency_bitcoin_rounded,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: _buildCurrencyCard(
                    isInverted: false,
                    name: "Dollar",
                    code: "USD",
                    amount: "627",
                    icon: Icons.attach_money_rounded,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// isInverted는 색상 반전을 위한 변수
  Widget _buildCurrencyCard({required bool isInverted, required String name, required String code, required String amount, required IconData icon}) {
    const blackColor = Color(0xff1F2123);
    return Container(
      //아이콘의 위치를 박스를 벗어나지 않게 해줌.
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        // isInverted가 true이면 배경색을 white
        color: isInverted ? Colors.white : blackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? blackColor : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? blackColor : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted ? blackColor : Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //scale (아이콘의 크기):  Row안이지만 크기는 벗어날 수 있게 해줌.
            Transform.scale(
              scale: 2.2,
              //translate (아이콘의 위치): 아이콘이 보여지는 위치를 바꿀 수있음
              child: Transform.translate(
                // x: -5, y: 10
                offset: const Offset(-5, 10),
                child: Icon(
                  icon,
                  color: isInverted ? blackColor : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
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
