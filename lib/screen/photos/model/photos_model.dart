class PhotosModel {
  int? albumId, id;
  String? title, url, thumbnailUrl;

  PhotosModel({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory PhotosModel.mapToModel(Map m1) {
    return PhotosModel(
      albumId: m1['albumId'],
      id: m1['id'],
      title: m1['title'],
      url: m1['url'],
      thumbnailUrl: m1['thumbnailUrl'],
    );
  }
}
