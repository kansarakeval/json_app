class PostsModel {
  int? userId, id;
  String? title, body;

  PostsModel({this.userId, this.id, this.title, this.body});

  factory PostsModel.mapToModel(Map m1) {
    return PostsModel(
      userId: m1['userId'],
      id: m1['id'],
      title: m1['title'],
      body: m1['body'],
    );
  }
}
