import 'package:json_annotation/json_annotation.dart'; 
  
part 'bottomTabIconModel.g.dart';


@JsonSerializable()
  class BottomTabIconModel extends Object {

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'data')
  Data data;

  BottomTabIconModel(this.status,this.data,);

  factory BottomTabIconModel.fromJson(Map<String, dynamic> srcJson) => _$BottomTabIconModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$BottomTabIconModelToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'iconList')
  List<IconList> iconList;

  Data(this.iconList,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class IconList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'textColor')
  int textColor;

  @JsonKey(name: 'iconImage')
  String iconImage;

  @JsonKey(name: 'iconName')
  String iconName;

  IconList(this.id,this.textColor,this.iconImage,this.iconName,);

  factory IconList.fromJson(Map<String, dynamic> srcJson) => _$IconListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$IconListToJson(this);

}

  
