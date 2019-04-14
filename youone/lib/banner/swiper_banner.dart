import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:convert';

class SwiperBannerWidget extends StatelessWidget {
  final List swiperDataList;
  SwiperBannerWidget({Key key,this.swiperDataList}):super(key:key);
  
  @override
  Widget build(BuildContext context) {
    return Swiper(
        itemBuilder: (BuildContext,int index){
          return Container(
            width: 335,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("${swiperDataList[index]['imgurl']}"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          );
        },
        itemCount: swiperDataList.length,
        pagination: new SwiperPagination(),
        autoplay: true,
    );
  }
}
