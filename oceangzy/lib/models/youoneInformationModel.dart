import 'package:json_annotation/json_annotation.dart'; 
  
part 'youoneInformationModel.g.dart';


@JsonSerializable()
  class YouoneInformationModel extends Object {

  @JsonKey(name: 'last')
  bool last;

  @JsonKey(name: 'totalPages')
  int totalPages;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'pageNum')
  int pageNum;

  @JsonKey(name: 'content')
  List<Content> content;

  @JsonKey(name: 'first')
  bool first;

  YouoneInformationModel(this.last,this.totalPages,this.pageSize,this.pageNum,this.content,this.first,);

  factory YouoneInformationModel.fromJson(Map<String, dynamic> srcJson) => _$YouoneInformationModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$YouoneInformationModelToJson(this);

}

  
@JsonSerializable()
  class Content extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'imgUrl')
  String imgUrl;

  @JsonKey(name: 'textNum')
  String textNum;

  @JsonKey(name: 'imgAuther')
  String imgAuther;

  @JsonKey(name: 'textContent')
  String textContent;

  @JsonKey(name: 'mon')
  String mon;

  @JsonKey(name: 'day')
  String day;

  Content(this.id,this.imgUrl,this.textNum,this.imgAuther,this.textContent,this.mon,this.day,);

  factory Content.fromJson(Map<String, dynamic> srcJson) => _$ContentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

}

  
