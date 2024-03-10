import 'package:coding_test_app/models/problem.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class ProblemController extends GetxController {
  var problems = <Problem>[].obs;
  var filteredProblems = <Problem>[].obs;

  @override
  void onInit() {
    loadProblems();
    super.onInit();
  }

  void loadProblems() async {
    final String jsonString = await rootBundle.loadString('assets/python_problems.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    problems.value = jsonList.map((item) => Problem.fromJson(item)).toList();
    filteredProblems.value = problems;
  }

  void search(String query) {
    filteredProblems.value = problems.where((problem) =>
        problem.statement.toLowerCase().contains(query.toLowerCase())).toList();
  }
}
