class Problem {
  final int id;
  final String statement;

  Problem({required this.id, required this.statement});

  factory Problem.fromJson(Map<String, dynamic> json) {
    return Problem(
      id: json['id'],
      statement: json['statement'],
    );
  }
}
