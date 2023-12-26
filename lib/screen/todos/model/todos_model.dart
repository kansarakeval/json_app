class TodoModel {
  int? id;
  String? title,completed;

  TodoModel({this.id,this.title,this.completed});

  factory TodoModel.mapToModel(Map m1) {
    return TodoModel(
        id: m1['id'],
        title: m1['title'],
      completed: m1['completed'],
    );
  }
}
