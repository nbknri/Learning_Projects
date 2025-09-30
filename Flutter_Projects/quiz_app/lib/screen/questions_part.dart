import 'package:flutter/material.dart';

class QuestionsPart extends StatefulWidget {
  const QuestionsPart({super.key});

  @override
  State<QuestionsPart> createState() => _QuestionsPartState();
}

class _QuestionsPartState extends State<QuestionsPart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "പുസ്തകങ്ങൾ കടലാസ് കൊണ്ടാണോ നിർമ്മിച്ചിരിക്കുന്നത്?",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
