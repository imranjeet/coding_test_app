import 'package:flutter/material.dart';

class PlagiarismWarning extends StatelessWidget {
  const PlagiarismWarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Note: Plagiarism is strictly prohibited.',
      style: TextStyle(color: Colors.red, fontSize: MediaQuery.of(context).size.width * 0.04),
    );
  }
}
