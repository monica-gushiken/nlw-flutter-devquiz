import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            top: true,
            child: QuestionIndicatorWidget(),
          ),
        ),
        body: QuizWidget(title: 'O que o Flutter faz em sua totalidade?'),
        bottomNavigationBar: SafeArea(
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: NextButtonWidget.white(
                  label: 'Pular',
                  onTap: () {},
                )),
                SizedBox(width: 7),
                Expanded(
                    child: NextButtonWidget.green(
                  label: 'Confirmar',
                  onTap: () {},
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
