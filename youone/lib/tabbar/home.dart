import 'package:flutter/material.dart';
import '../client/diotest.dart';
import '../banner/swiper_banner.dart';

class HomePageWidget extends StatefulWidget{
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();

}

class _HomePageWidgetState extends State<HomePageWidget>{
  var val = {
    "results": [
        {
            "id": 1,
            "imgurl": "http://image.wufazhuce.com/Fp7L1MIqpBJyGRjbvFulSmjnmPB8",
            "textnum": "VOL.8",
            "imgauther": "狼&插画/杨振",
            "textcontent": "是狼是人，日久见心。by 小饭",
            "mon": "Oct 2012",
            "day": "15"
        },
        {
            "id": 2,
            "imgurl": "http://image.wufazhuce.com/FoWU2UK3T2ZjnOipHivjfUgJj59N",
            "textnum": "VOL.9",
            "imgauther": "海岸线&摄影/张晓",
            "textcontent": "如果快乐是一种发明，它很容易被一再发明。by 小饭",
            "mon": "Oct 2012",
            "day": "16"
        },
        {
            "id": 3,
            "imgurl": "http://image.wufazhuce.com/Fqon_Wtsm-_NpfDb5r0UEZGnvIsf",
            "textnum": "VOL.10",
            "imgauther": "HI&插图/季大纯",
            "textcontent": "很高兴见到你。by 韩寒",
            "mon": "Oct 2012",
            "day": "17"
        },
        {
            "id": 4,
            "imgurl": "http://image.wufazhuce.com/FhAzpjIfPoclItgSHwkJMAYaXIKs",
            "textnum": "VOL.11",
            "imgauther": "孤独&插画/何禾",
            "textcontent": "有比孤独更紧迫的事，云存储的使用空间到期了。by 蔡蕾",
            "mon": "Oct 2012",
            "day": "18"
        },
        {
            "id": 5,
            "imgurl": "http://image.wufazhuce.com/FmlpwxeybYxx7tgy-Y76cN8VcDI_",
            "textnum": "VOL.12",
            "imgauther": "演出&摄影/慕容拖鞋",
            "textcontent": "台下谁看到了童年，台上谁虚构了童年，爸爸妈妈说，唇红齿白真让人爱怜。by 金丹华",
            "mon": "Oct 2012",
            "day": "19"
        },
        {
            "id": 6,
            "imgurl": "http://image.wufazhuce.com/FouOvxzJfzFebF5GhnQ_ZfmTQ5S0",
            "textnum": "VOL.13",
            "imgauther": "peek&插画/so.p",
            "textcontent": "“正常”就是一种缺陷。很多例子都告诫我，有点问题比没有问题好很多。 by 何禾",
            "mon": "Oct 2012",
            "day": "20"
        },
        {
            "id": 7,
            "imgurl": "http://image.wufazhuce.com/FtvvsVKgt6nt2R6t0ypAPlaiwNL4",
            "textnum": "VOL.14",
            "imgauther": "天空之城&摄影/周云哲",
            "textcontent": "活出你的文艺。今日送上编辑部作品特辑。by 《一个》全体",
            "mon": "Oct 2012",
            "day": "21"
        },
        {
            "id": 8,
            "imgurl": "http://image.wufazhuce.com/Fh4sBvK29E1h8N2Y1vkRtjkga_Jp",
            "textnum": "VOL.15",
            "imgauther": "猴戏&插画/马一禾",
            "textcontent": "终点当然是存在的，只是和最初的想象不一样而已。by 蔡蕾",
            "mon": "Oct 2012",
            "day": "22"
        },
        {
            "id": 9,
            "imgurl": "http://image.wufazhuce.com/FuxEmykfr3bzZEi-jGhyixQ8kj9h",
            "textnum": "VOL.16",
            "imgauther": "优姑娘和熊先生的森林之旅&插图/儿粒粒",
            "textcontent": "爱是：看到你就开心，跟你睡在一起就满足。by 小饭",
            "mon": "Oct 2012",
            "day": "23"
        },
        {
            "id": 10,
            "imgurl": "http://image.wufazhuce.com/FspE9gZlqqUJ1CKTvP9Cs0lworA2",
            "textnum": "VOL.17",
            "imgauther": "鹤&摄影/严明",
            "textcontent": "不主动的人是好人的概率大于坏人。by 何禾",
            "mon": "Oct 2012",
            "day": "24"
        }
    ]
  };
  List<Map> swiperDataList = (val['results'] as List).cast();

  @override
  Widget build(BuildContext context) {
    
    // getHttp();
    return Scaffold(
      body:Text('data'),
    );
  }
}