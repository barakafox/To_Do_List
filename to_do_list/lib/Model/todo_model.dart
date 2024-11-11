class TaskModel {
  List<dynamic> todos;

  TaskModel({required this.todos});

  factory TaskModel.fromjson(Map<String, dynamic> json) {
    return TaskModel(todos: json['todos']);
  }
}
