import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

typedef Widget HandlerFunc(
    BuildContext context, Map<String, List<String>> parameters);
typedef Widget PageBuliderFunc(Bundle bundle);

class Bundle {
  Map<String, dynamic> _map = {};
  _setValue(var k, var v) => _map[k] = v;

  _getValue(String k) {
    if (!_map.containsKey(k)) {
      throw Exception("你使用的$k 不存在");
    }
    return _map[k];
  }

  putInt(String k, int v) => _map[k] = v;
  putString(String k, String v) => _setValue(k, v);
  putBool(String k, bool v) => _setValue(k, v);
  putList<V>(String k, List<V> v) => _setValue(k, v);
  putMap<K, V>(String k, Map<K, V> v) => _setValue(k, v);

  int getInt(String k) => _getValue(k) as int;
  String getString(String k) => _getValue(k) as String;
  bool getBool(String k) => _getValue(k) as bool;
  List getList(String k) => _getValue(k) as List;
  Map getMap(String k) => _getValue(k) as Map;

  @override
  String toString() {
    // TODO: implement toString
    return _map.toString();
  }
}

class PageBulider {
  final PageBuliderFunc buliderFunc;
  HandlerFunc handlerFunc;
  PageBulider({this.buliderFunc}) {
    this.handlerFunc = (context, _) {
      return this
          .buliderFunc(ModalRoute.of(context).settings.arguments as Bundle);
    };
  }
  Handler getHandler() {
    return Handler(handlerFunc: this.handlerFunc);
  }
}
