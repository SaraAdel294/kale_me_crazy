class ReviewModel {
  ReviewModel({
    required this.status,
    required this.message,
    required this.data,
  });
  late final bool status;
  late final String message;
  late final Data data;

  ReviewModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.info,
  });
  late final List<Info> info;

  Data.fromJson(Map<String, dynamic> json){
    info = List.from(json['info']).map((e)=>Info.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['info'] = info.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Info {
  Info({
    required this.user,
    required this.isMale,
    required this.comment,
  });
  late final String user;
  late final bool isMale;
  late final String comment;

  Info.fromJson(Map<String, dynamic> json){
    user = json['user'];
    isMale = json['is_male'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user'] = user;
    _data['is_male'] = isMale;
    _data['comment'] = comment;
    return _data;
  }
}