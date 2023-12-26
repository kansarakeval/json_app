class AlbumsModel {
  int? id;
  String? title;

  AlbumsModel({this.id,this.title});

  factory AlbumsModel.mapToModel(Map m1) {
    return AlbumsModel(
      id: m1['id'],
      title: m1['title']
    );
  }
}
