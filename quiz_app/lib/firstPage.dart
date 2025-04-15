import 'package:flutter/material.dart';
import 'quizPage.dart';

void main() {
  runApp(MaterialApp(
    home: Firstpage(),
  ));
}

class Firstpage extends StatelessWidget {
  Firstpage({super.key});
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 114, 45, 68),
            centerTitle: true,
            title: Text("Quiz Uygulaması",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                )),
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
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Container(
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'İsminizi Girin',
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      height: 70,
                      width: 300,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          String userName = nameController.text;
                          if (userName.isNotEmpty) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    QuizPage(userName: userName),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Devam Et",
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
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
