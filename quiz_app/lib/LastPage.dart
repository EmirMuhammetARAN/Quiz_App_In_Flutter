import 'package:flutter/material.dart';
import 'package:quiz_app/firstPage.dart';

class LastPage extends StatelessWidget {
  final int correctAnswers;
  final String userName;
  const LastPage({required this.correctAnswers, required this.userName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 114, 45, 68),
          centerTitle: true,
          title: Text(
            "Sonuç",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/a.jpg',
                height: 700,
                width: 600,
                fit: BoxFit.fill,
              ),
            ),
            Opacity(
              opacity: 0.7,
              child: Container(
                height: 800,
                width: 600,
                color: Colors.black,
              ),
            ),
            Positioned(
              top: 250,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  Text(
                    "Tebrikler! " +
                        userName +
                        "\nDoğru cevap sayısı: $correctAnswers",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Firstpage(),
                        ),
                      );
                    },
                    child: Text(
                      "Tekrar Oyna",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF722D44),
                      padding: EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30), // Buton boyutu
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
