// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youoneInformationModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YouoneInformationModel _$YouoneInformationModelFromJson(
    Map<String, dynamic> json) {
  return YouoneInformationModel(
    json['last'] as bool,
    json['totalPages'] as int,
    json['pageSize'] as int,
    json['pageNum'] as int,
    (json['content'] as List)
        ?.map((e) =>
            e == null ? null : Content.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['first'] as bool,
  );
}

Map<String, dynamic> _$YouoneInformationModelToJson(
        YouoneInformationModel instance) =>
    <String, dynamic>{
      'last': instance.last,
      'totalPages': instance.totalPages,
      'pageSize': instance.pageSize,
      'pageNum': instance.pageNum,
      'content': instance.content,
      'first': instance.first,
    };

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    json['id'] as int,
    json['imgUrl'] as String,
    json['textNum'] as String,
    json['imgAuther'] as String,
    json['textContent'] as String,
    json['mon'] as String,
    json['day'] as String,
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'textNum': instance.textNum,
      'imgAuther': instance.imgAuther,
      'textContent': instance.textContent,
      'mon': instance.mon,
      'day': instance.day,
    };
