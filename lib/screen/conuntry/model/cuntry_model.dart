class CuntryModel{
  CuntryNameModel? cuntryNameModel;

  CuntryModel({this.cuntryNameModel});

  factory CuntryModel.mapToModel(Map m1) {
    return CuntryModel(
        cuntryNameModel: CuntryNameModel.mapToModel(m1['name'])
    );
  }
}

class CuntryNameModel{
  CuntryNativeNameModel? cuntryNativeName;
  String? common,official;

  CuntryNameModel({this.common, this.official,this.cuntryNativeName});

  factory CuntryNameModel.mapToModel(Map m1) {
    return CuntryNameModel(
        common: m1['common'],
        official: m1['official'],
      cuntryNativeName: CuntryNativeNameModel.mapToModel(m1['nativeName'])
    );
  }
}

class CuntryNativeNameModel{
  CuntryEngModel? cuntryEng;

  CuntryNativeNameModel({this.cuntryEng});

  factory CuntryNativeNameModel.mapToModel(Map m1) {
    return CuntryNativeNameModel(
      cuntryEng: CuntryEngModel.mapToModel(m1['eng'])
    );
  }

}

class CuntryEngModel{
  String? official,common;

  CuntryEngModel({this.official, this.common});

  factory CuntryEngModel.mapToModel(Map m1) {
    return CuntryEngModel(
      official: m1['official'],
      common: m1['common'],
    );
  }
}