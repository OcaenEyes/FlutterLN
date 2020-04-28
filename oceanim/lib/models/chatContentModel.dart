import 'package:json_annotation/json_annotation.dart';
import 'package:oceanim/models/userModel.dart';

part 'chatContentModel.g.dart';

@JsonSerializable()
class ChatContentModel {
  List<UserModel> chatUsers;
  String lastContent;
  DateTime lastUpdateTime;
  bool isRead;

  ChatContentModel(
      this.chatUsers, this.lastContent, this.isRead, this.lastUpdateTime);

  factory ChatContentModel.fromJson(Map<String, dynamic> json) =>
      _$ChatContentModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChatContentModelToJson(this);
}
