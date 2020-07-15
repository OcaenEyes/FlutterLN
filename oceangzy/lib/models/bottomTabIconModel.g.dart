// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottomTabIconModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BottomTabIconModel _$BottomTabIconModelFromJson(Map<String, dynamic> json) {
  return BottomTabIconModel(
    json['status'] as int,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BottomTabIconModelToJson(BottomTabIconModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    (json['iconList'] as List)
        ?.map((e) =>
            e == null ? null : IconList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'iconList': instance.iconList,
    };

IconList _$IconListFromJson(Map<String, dynamic> json) {
  return IconList(
    json['id'] as int,
    json['textColor'] as int,
    json['iconImage'] as String,
    json['iconName'] as String,
  );
}

Map<String, dynamic> _$IconListToJson(IconList instance) => <String, dynamic>{
      'id': instance.id,
      'textColor': instance.textColor,
      'iconImage': instance.iconImage,
      'iconName': instance.iconName,
    };
