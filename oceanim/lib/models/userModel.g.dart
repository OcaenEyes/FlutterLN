// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
      json['userId'] as String,
      json['userName'] as String,
      json['nickName'] as String,
      json['avatarUrl'] as String,
      json['singnName'] as String);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'nickName': instance.nickName,
      'avatarUrl': instance.avatarUrl,
      'singnName': instance.signName
    };
