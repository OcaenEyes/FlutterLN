class ResultDiscover{
  final String next;
  final String previous;
  final NoteDiscover results;

  // const ResultDiscover(this.next,this.previous,this.results);

  // @override
  // String toString() {
  //   return 'ResultDiscover{next:$next,previous:$previous,results:$results}';
  // }

  ResultDiscover.fromJson(Map<String,dynamic>map)
    : next = map['next'],
      previous = map['previous'],
      results = map['results'];

   
}

class NoteDiscover {
  final int id;
  final String imgurl;
  final String textnum;
  final String imgauther;
  final String textcontent;
  final String mon;
  final String day;

  // const NoteDiscover(this.id,this.imgurl,this.textnum,this.imgauther,this.textcontent,this.mon,this.day);

  // @override
  // String toString() {
  //   return 'NoteDiscover{id:$id,imgurl:$imgurl,textnum:$textnum,imgauther:$imgauther,textcontent:$textcontent,mon:$mon,day:$day}';
  // }
  NoteDiscover.fromJson(Map<String,dynamic>map)
  : id = map['id'],
    imgurl = map['imgurl'],
    textnum = map['textnum'],
    imgauther = map['imgauther'],
    textcontent = map['textcontent'],
    mon = map['mon'],
    day = map['day'];

  toList() {}

}
