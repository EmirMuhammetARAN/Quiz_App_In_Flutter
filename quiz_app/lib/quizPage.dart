import 'package:flutter/material.dart';
import 'LastPage.dart';

final List<Map<String, dynamic>> questions = [
  {
    'question': 'Türkiye\'nin başkenti neresidir?',
    'options': ['İstanbul', 'Ankara', 'İzmir', 'Bursa'],
    'answer': 'Ankara'
  },
  {
    'question': 'Dünya\'nın en büyük okyanusu hangisidir?',
    'options': ['Hint', 'Atlas', 'Büyük', 'Kuzey Buz'],
    'answer': 'Büyük'
  },
  {
    'question': '5 + 7 kaç eder?',
    'options': ['10', '11', '12', '13'],
    'answer': '12'
  },
  {
    'question': 'Hangi gezegen Güneş\'e en yakındır?',
    'options': ['Venüs', 'Merkür', 'Dünya', 'Mars'],
    'answer': 'Merkür'
  },
  {
    'question': 'Türk bayrağında hangi renk bulunmaz?',
    'options': ['Kırmızı', 'Beyaz', 'Mavi', 'Hiçbiri'],
    'answer': 'Mavi'
  },
  {
    'question': 'En çok konuşulan dil hangisidir?',
    'options': ['İngilizce', 'Çince', 'İspanyolca', 'Arapça'],
    'answer': 'Çince'
  },
  {
    'question': 'Atatürk hangi yılda doğmuştur?',
    'options': ['1881', '1879', '1883', '1885'],
    'answer': '1881'
  },
  {
    'question': 'Python hangi tür bir programlama dilidir?',
    'options': ['Düşük seviye', 'Orta seviye', 'Yüksek seviye', 'Makine dili'],
    'answer': 'Yüksek seviye'
  },
  {
    'question': 'Hangisi bir programlama dili değildir?',
    'options': ['Java', 'HTML', 'Python', 'C++'],
    'answer': 'HTML'
  },
  {
    'question': 'Ankara hangi bölgede yer alır?',
    'options': ['Ege', 'İç Anadolu', 'Doğu Anadolu', 'Marmara'],
    'answer': 'İç Anadolu'
  },
];

int correctAnswers = 0;
int currentQuestion = 0;

class QuizPage extends StatefulWidget {
  final String userName;
  const QuizPage({required this.userName});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "" + (currentQuestion + 1).toString() + " / 10",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 114, 45, 68),
            centerTitle: true,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 114, 45, 68),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        questions[currentQuestion]['question'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (questions[currentQuestion]['answer'] ==
                            questions[currentQuestion]['options'][0]) {
                          correctAnswers++;
                        }
                        if (currentQuestion > 8) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LastPage(
                                  correctAnswers: correctAnswers,
                                  userName: widget.userName),
                            ),
                          );
                        } else {
                          setState(() {
                            currentQuestion++;
                          });
                        }
                      },
                      child: Text(
                        questions[currentQuestion]['options'][0],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 114, 45, 68),
                        padding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30), // Buton boyutu
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (questions[currentQuestion]['answer'] ==
                            questions[currentQuestion]['options'][1]) {
                          correctAnswers++;
                        }
                        if (currentQuestion > 8) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LastPage(
                                  correctAnswers: correctAnswers,
                                  userName: widget.userName),
                            ),
                          );
                        } else {
                          setState(() {
                            currentQuestion++;
                          });
                        }
                      },
                      child: Text(
                        questions[currentQuestion]['options'][1],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 114, 45, 68),
                        padding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30), // Buton boyutu
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (questions[currentQuestion]['answer'] ==
                            questions[currentQuestion]['options'][2]) {
                          correctAnswers++;
                        }
                        if (currentQuestion > 8) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LastPage(
                                  correctAnswers: correctAnswers,
                                  userName: widget.userName),
                            ),
                          );
                        } else {
                          setState(() {
                            currentQuestion++;
                          });
                        }
                      },
                      child: Text(
                        questions[currentQuestion]['options'][2],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 114, 45, 68),
                        padding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30), // Buton boyutu
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (questions[currentQuestion]['answer'] ==
                            questions[currentQuestion]['options'][3]) {
                          correctAnswers++;
                        }
                        if (currentQuestion > 8) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LastPage(
                                  correctAnswers: correctAnswers,
                                  userName: widget.userName),
                            ),
                          );
                        } else {
                          setState(() {
                            currentQuestion++;
                          });
                        }
                      },
                      child: Text(
                        questions[currentQuestion]['options'][3],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 114, 45, 68),
                        padding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30), // Buton boyutu
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
