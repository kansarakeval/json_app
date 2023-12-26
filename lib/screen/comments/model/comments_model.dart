class CommentsModel {
  int? id;
  String? name, email,body;

  CommentsModel({this.id, this.name, this.email, this.body});

  factory CommentsModel.mapToModel(Map m1) {
    return CommentsModel(
      id: m1['id'],
      name: m1['name'],
      email: m1['email'],
      body: m1['body'],
    );
  }
}
