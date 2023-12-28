class UseresModel {
  int? page, per_page, total, total_pages;
  SupportModel? supportModel;
  List<DataModel>? dataModelList = [];

  UseresModel(
      {this.page,
      this.per_page,
      this.total,
      this.total_pages,
      this.supportModel,
      this.dataModelList});

  factory UseresModel.mapToModel(Map m1)
  {
    List data = m1['data'];

    return UseresModel(
      page: m1['page'],
      per_page: m1['per_page'],
      total: m1['total'],
      total_pages: m1['total_pages'],
      supportModel: SupportModel.mapToModel(m1['support']),
      dataModelList: data.map((e) => DataModel.mapToModel(e)).toList(),
    );
  }

}

//SupportModel
class SupportModel {
  String? url, text;

  SupportModel({this.url, this.text});

  factory SupportModel.mapToModel(Map m1) {
    return SupportModel(
      url: m1['url'],
      text: m1['text'],
    );
  }
}

//DataModel
class DataModel {
  int? id;
  String? email, first_name, last_name, avatar;

  DataModel(
      {this.id, this.email, this.first_name, this.last_name, this.avatar});

  factory DataModel.mapToModel(Map m1) {
    return DataModel(
      id: m1['id'],
      email: m1['email'],
      first_name: m1['first_name'],
      last_name: m1['last_name'],
      avatar: m1['avatar'],
    );
  }
}
