class Question {
  final int id, answer;
  final String question;
  final List<String> options;
  Question({
    required this.id,
    required this.answer,
    required this.question,
    required this.options,
  });
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI so software development kit create by___",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 2
  },
  {
    "id": 2,
    "question": "when google releace Flutter",
    "options": ['Jun 2017', 'Jul 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Count', 'Ountput>>'],
    "answer_index": 2,
  }
];
