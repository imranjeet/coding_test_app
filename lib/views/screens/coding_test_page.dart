import 'package:coding_test_app/models/problem.dart';
import 'package:coding_test_app/views/widgets/code_editor.dart';
import 'package:coding_test_app/views/widgets/plagiarism_warning.dart';
import 'package:coding_test_app/views/widgets/problem_statement.dart';
import 'package:coding_test_app/views/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class CodingTestPage extends StatelessWidget {
  final Problem problem;
  const CodingTestPage({super.key, required this.problem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProblemStatement(problem: problem),
            const SizedBox(height: 20),
            CodeEditorWid(),
            const SizedBox(height: 20),
            const SubmitButton(),
            const SizedBox(height: 20),
            const PlagiarismWarning(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
