// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
      json['id'] as String,
      json['userId'] as String,
      json['passWord'] as String,
      json['nickName'] as String,
      json['avatarUrl'] as String,
      json['signWord'] as String,
      json['createTime'] as String,
      json['updateTime'] as String,
      json['phoneNumber'] as String);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'phoneNumber': instance.phoneNumber,
      'passWord': instance.passWord,
      'avatarUrl': instance.avatarUrl,
      'nickName': instance.nickName,
      'signWord': instance.signWord,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime
    };
