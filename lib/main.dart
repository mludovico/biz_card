import 'package:biz_card/MainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BizCard());
}

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.teal,
                    Colors.tealAccent,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
              ),
            ),
            MainScreen(),
          ],
        ),
      ),
    );
  }
}
