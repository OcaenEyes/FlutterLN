import 'package:dio/dio.dart';

void getHttp()async{
  try {
    Response response;
    var data = {'name':'高智勇'};
    response = await Dio().get(
      "http://api.oceaneyes.cn/api/one",
    );
    return print(response.data);
  } catch(e) {
    return print(e);
  }
}
