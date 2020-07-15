import 'package:json_annotation/json_annotation.dart'; 
  
part 'youoneInformationModel.g.dart';


@JsonSerializable()
  class YouoneInformationModel extends Object {

  @JsonKey(name: 'content')
  List<Content> content;

  @JsonKey(name: 'pageable')
  Pageable pageable;

  @JsonKey(name: 'last')
  bool last;

  @JsonKey(name: 'totalPages')
  int totalPages;

  @JsonKey(name: 'totalElements')
  int totalElements;

  @JsonKey(name: 'numberOfElements')
  int numberOfElements;

  @JsonKey(name: 'first')
  bool first;

  @JsonKey(name: 'sort')
  Sort sort;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'number')
  int number;

  @JsonKey(name: 'empty')
  bool empty;

  YouoneInformationModel(this.content,this.pageable,this.last,this.totalPages,this.totalElements,this.numberOfElements,this.first,this.sort,this.size,this.number,this.empty,);

  factory YouoneInformationModel.fromJson(Map<String, dynamic> srcJson) => _$YouoneInformationModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$YouoneInformationModelToJson(this);

}

  
@JsonSerializable()
  class Content extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'imgUrl')
  String imgUrl;

  @JsonKey(name: 'textNum')
  String textNum;

  @JsonKey(name: 'imgAuther')
  String imgAuther;

  @JsonKey(name: 'textContent')
  String textContent;

  @JsonKey(name: 'mon')
  String mon;

  @JsonKey(name: 'day')
  String day;

  Content(this.id,this.imgUrl,this.textNum,this.imgAuther,this.textContent,this.mon,this.day,);

  factory Content.fromJson(Map<String, dynamic> srcJson) => _$ContentFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ContentToJson(this);

}

  
@JsonSerializable()
  class Pageable extends Object {

  @JsonKey(name: 'sort')
  Sort sort;

  @JsonKey(name: 'offset')
  int offset;

  @JsonKey(name: 'pageNumber')
  int pageNumber;

  @JsonKey(name: 'pageSize')
  int pageSize;

  @JsonKey(name: 'unpaged')
  bool unpaged;

  @JsonKey(name: 'paged')
  bool paged;

  Pageable(this.sort,this.offset,this.pageNumber,this.pageSize,this.unpaged,this.paged,);

  factory Pageable.fromJson(Map<String, dynamic> srcJson) => _$PageableFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PageableToJson(this);

}

  
@JsonSerializable()
  class Sort extends Object {

  @JsonKey(name: 'sorted')
  bool sorted;

  @JsonKey(name: 'unsorted')
  bool unsorted;

  @JsonKey(name: 'empty')
  bool empty;

  Sort(this.sorted,this.unsorted,this.empty,);

  factory Sort.fromJson(Map<String, dynamic> srcJson) => _$SortFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SortToJson(this);

}

  
@JsonSerializable()
  class Sort extends Object {

  @JsonKey(name: 'sorted')
  bool sorted;

  @JsonKey(name: 'unsorted')
  bool unsorted;

  @JsonKey(name: 'empty')
  bool empty;

  Sort(this.sorted,this.unsorted,this.empty,);

  factory Sort.fromJson(Map<String, dynamic> srcJson) => _$SortFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SortToJson(this);

}

  
