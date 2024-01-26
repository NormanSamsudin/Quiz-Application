import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(// nnti boleh scroll. tapi mnde ni kita pakai untuk kalau die overflow lebih dari container jer.
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()), // para dlm text mesti kne string sbbtu kne convert to string.
                Expanded(// tambah expanded untuk elakkn daripada column tu besar sgt sampai terkueluar boundry
                  child: Column(children: [
                    Text(data['question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
