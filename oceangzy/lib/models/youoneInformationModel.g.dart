// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youoneInformationModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YouoneInformationModel _$YouoneInformationModelFromJson(
    Map<String, dynamic> json) {
  return YouoneInformationModel(
    (json['content'] as List)
        ?.map((e) =>
            e == null ? null : Content.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['pageable'] == null
        ? null
        : Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
    json['last'] as bool,
    json['totalPages'] as int,
    json['totalElements'] as int,
    json['numberOfElements'] as int,
    json['first'] as bool,
    json['sort'] == null
        ? null
        : Sort.fromJson(json['sort'] as Map<String, dynamic>),
    json['size'] as int,
    json['number'] as int,
    json['empty'] as bool,
  );
}

Map<String, dynamic> _$YouoneInformationModelToJson(
        YouoneInformationModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'pageable': instance.pageable,
      'last': instance.last,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'first': instance.first,
      'sort': instance.sort,
      'size': instance.size,
      'number': instance.number,
      'empty': instance.empty,
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

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return Pageable(
    json['sort'] == null
        ? null
        : Sort.fromJson(json['sort'] as Map<String, dynamic>),
    json['offset'] as int,
    json['pageNumber'] as int,
    json['pageSize'] as int,
    json['unpaged'] as bool,
    json['paged'] as bool,
  );
}

Map<String, dynamic> _$PageableToJson(Pageable instance) => <String, dynamic>{
      'sort': instance.sort,
      'offset': instance.offset,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'unpaged': instance.unpaged,
      'paged': instance.paged,
    };

Sort _$SortFromJson(Map<String, dynamic> json) {
  return Sort(
    json['sorted'] as bool,
    json['unsorted'] as bool,
    json['empty'] as bool,
  );
}

Map<String, dynamic> _$SortToJson(Sort instance) => <String, dynamic>{
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
      'empty': instance.empty,
    };

Sort _$SortFromJson(Map<String, dynamic> json) {
  return Sort(
    json['sorted'],
    json['unsorted'],
    json['empty'],
  );
}
