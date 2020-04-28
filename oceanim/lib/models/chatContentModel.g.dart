// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatContentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatContentModel _$ChatContentModelFromJson(Map<String, dynamic> json) {
  return ChatContentModel(
      (json['chatUsers'] as List)
          ?.map((e) =>
              e == null ? null : UserModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['lastContent'] as String,
      json['isRead'] as bool,
      json['lastUpdateTime'] == null
          ? null
          : DateTime.parse(json['lastUpdateTime'] as String));
}

Map<String, dynamic> _$ChatContentModelToJson(ChatContentModel instance) =>
    <String, dynamic>{
      'chatUsers': instance.chatUsers,
      'lastContent': instance.lastContent,
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'isRead': instance.isRead
    };
