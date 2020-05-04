import 'package:json_annotation/json_annotation.dart';
part 'userModel.g.dart';

@JsonSerializable()
class UserModel {
  String id;
  String userId;
  String phoneNumber;
  String passWord;
  String avatarUrl;
  String nickName;
  String signWord;
  String createTime;
  String updateTime;

  UserModel(this.id, this.userId, this.passWord, this.nickName, this.avatarUrl,
      this.signWord, this.createTime, this.updateTime, this.phoneNumber);
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
