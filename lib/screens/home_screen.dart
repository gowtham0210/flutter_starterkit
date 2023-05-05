import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/widget/question_widget.dart';
import '../constants.dart';
import '../models/question_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _question = [
    Question(
        id: '10',
        title: 'Which of the following concepts make extensive use of arrays?',
        options: {'Binary trees':false,'Scheduling of processes':false,'Caching':false,'Spatial locality':true}
    ),
    Question(
        id: '11',
        title: 'In general, the index of the first element in an array is',
        options: {'0':true,'-1':false,'2':false,'1':false}
    ),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        title: const Text('Quiz App'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
                question: _question[index].title,
                indexAction: index,
                totalQuestions: _question.length)
          ],
        ),

      ),
    );
  }
}
