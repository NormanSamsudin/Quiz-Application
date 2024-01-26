import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // constructor
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  }); //mesti dapat value die tak boleh null

  //varaible
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(246, 83, 8, 96),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(40)),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
