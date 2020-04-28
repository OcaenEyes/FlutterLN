import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'bottomTabModel.g.dart';

@JsonSerializable()
class BottomTabModel{
  Color color;
  String iconImage;
  String iconName;

  BottomTabModel(this.color,this.iconImage,this.iconName);

  factory BottomTabModel.fromJson(Map<String, dynamic> json) =>
      _$BottomTabModelFromJson(json);
  Map<String, dynamic> toJson() => _$BottomTabModelToJson(this);
  
}