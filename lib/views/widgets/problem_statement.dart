import 'package:coding_test_app/models/problem.dart';
import 'package:flutter/material.dart';

class ProblemStatement extends StatelessWidget {
  final Problem problem;

  const ProblemStatement({super.key, required this.problem});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      problem.statement,
      style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05, fontWeight: FontWeight.bold),
    );
  }
}
