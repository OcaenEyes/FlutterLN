// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return UserInfoModel(
    json['userInfo'] == null
        ? null
        : UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
    json['code'] as String,
    json['message'] as String,
  );
}

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
      'code': instance.code,
      'message': instance.message,
    };

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    json['phoneNumber'] as String,
    json['avatarUrl'] as String,
    json['createTime'] as String,
    json['nickName'] as String,
    json['signWord'] as String,
    json['id'] as int,
    json['userId'] as String,
  );
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'avatarUrl': instance.avatarUrl,
      'createTime': instance.createTime,
      'nickName': instance.nickName,
      'signWord': instance.signWord,
      'id': instance.id,
      'userId': instance.userId,
    };
