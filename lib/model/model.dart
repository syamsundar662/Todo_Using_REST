class TodoModel {
  String heading;
  String description;

  TodoModel({required this.heading, required this.description});

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
        heading: json['title'] ?? '', description: json['description'] ?? '');
  }
}
