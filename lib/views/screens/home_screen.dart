import 'package:coding_test_app/controllers/problem_controller.dart';
import 'package:coding_test_app/views/screens/coding_test_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final ProblemController problemController = Get.put(ProblemController());
  final TextEditingController searchController = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Testing App'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                height: 55,
                child: TextField(
                  controller: searchController,
                  onChanged: (value) {
                    problemController.search(value);
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search Problems',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: problemController.filteredProblems.length,
                  itemBuilder: (context, index) {
                    final problem = problemController.filteredProblems[index];
                    return ListTile(
                      title: Text(' ${index + 1}. ${problem.statement}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CodingTestPage(problem: problem)),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
