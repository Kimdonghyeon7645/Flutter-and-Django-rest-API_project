import 'package:flutter/material.dart';
import 'package:quiz_app_test/model/model_quiz.dart';
import 'package:quiz_app_test/screen/screen_home.dart';

class ResultScreen extends StatelessWidget {
  List<int> answers;
  List<Quiz> quizs;
  ResultScreen({this.answers, this.quizs});

  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    int score = 0;
    for (int i = 0; i < quizs.length; i++) {
      if (quizs[i].answer == answers[i]) {
        score += 1;
      }
    }

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz APP (Result)"),
          backgroundColor: Colors.lightBlue,
          leading: Container(),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.lightBlue),
              color: Colors.lightBlue,
            ),
            width: width * 0.85,
            height: height * 0.7,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: width * 0.048),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.lightBlue),
                    color: Colors.white,
                  ),
                  width: width * 0.73,
                  height: height * 0.25,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(
                          0, width * 0.048, 0, width * 0.012),
                        child: Text(
                          '수고하셨습니다!',
                          style: TextStyle(
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        '당신의 점수는', 
                        style: TextStyle(
                          fontSize: width * 0.048,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        score.toString() + '/' + quizs.length.toString(),
                        style: TextStyle(
                          fontSize: width * 0.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(width * 0.012),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    "\n나의 첫 APP",
                    style: TextStyle(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "개발기간 : 2020.4.14.~4.15. (2일간)\n참고 : 플러터와 장고로 1시간만에 퀴즈 앱/서버 만들기\n",
                    style: TextStyle(
                      fontSize: width * 0.035,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    " 소감 : flutter(플러터)를 쓰면서 안드로이드란 어떤지 간단히 맛보기 할 수 있었다. 그리고 안드로이드 개발자도 엄청나다는 것을 배웠다.",
                    style: TextStyle(
                      fontSize: width * 0.03,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "(안드로이드 개발자가 존경스럽다.)",
                    style: TextStyle(
                      fontSize: width * 0.03,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "다음에 찾아오는 여유시간에 한번 flutter와 앱개발을 제대로 입문해봐야 겠다.",
                    style: TextStyle(
                      fontSize: width * 0.03,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: width * 0.048),
                  child: ButtonTheme(
                    minWidth: width * 0.73, 
                    height: height * 0.05,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: RaisedButton( onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return HomeScreen();                        
                          }));
                      },
                      child: Text('홈으로 돌아가기'),
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}