import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:highlight/languages/python.dart';

class CodeEditorWid extends StatelessWidget {
   CodeEditorWid({super.key});

  final controller = CodeController(
  text: '''print("Hello World")
  





  
  ''', // Initial code
  language: python,
);

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: CodeTheme(
          data: CodeThemeData(styles: monokaiSublimeTheme),
          child: SingleChildScrollView(
            child: CodeField(
              controller: controller,
            ),
          ),
        ),
    );
  }
}
