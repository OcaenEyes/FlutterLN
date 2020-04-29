import 'package:json_annotation/json_annotation.dart';
part 'userModel.g.dart';

@JsonSerializable()
class UserModel {
  String userId;
  String userName;
  String nickName;
  String avatarUrl;
  String signName;

  UserModel(this.userId, this.userName, this.nickName, this.avatarUrl,
      this.signName);
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
