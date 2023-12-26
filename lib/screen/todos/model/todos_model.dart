class TodoModel {
  int? id;
  String? title;

  TodoModel({this.id,this.title});

  factory TodoModel.mapToModel(Map m1) {
    return TodoModel(
        id: m1['id'],
        title: m1['title'],
    );
  }
}
