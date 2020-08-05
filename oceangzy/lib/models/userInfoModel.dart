import 'package:json_annotation/json_annotation.dart'; 
  
part 'userInfoModel.g.dart';


@JsonSerializable()
  class UserInfoModel extends Object {

  @JsonKey(name: 'userInfo')
  UserInfo userInfo;

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'message')
  String message;

  UserInfoModel(this.userInfo,this.code,this.message,);

  factory UserInfoModel.fromJson(Map<String, dynamic> srcJson) => _$UserInfoModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);

}

  
@JsonSerializable()
  class UserInfo extends Object {

  @JsonKey(name: 'phoneNumber')
  String phoneNumber;

  @JsonKey(name: 'avatarUrl')
  String avatarUrl;

  @JsonKey(name: 'createTime')
  String createTime;

  @JsonKey(name: 'nickName')
  String nickName;

  @JsonKey(name: 'signWord')
  String signWord;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'userId')
  String userId;

  UserInfo(this.phoneNumber,this.avatarUrl,this.createTime,this.nickName,this.signWord,this.id,this.userId,);

  factory UserInfo.fromJson(Map<String, dynamic> srcJson) => _$UserInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

}

  
