import 'package:fluro/fluro.dart';
import 'package:lemon/router/page_routes.dart';

class PageRouter{
  static final router = Router();
  static setupRoutes(){
    pageRoutes.forEach((path,handler){
      router.define(path.toString(), handler: handler.getHandler(), transitionType: TransitionType.inFromRight);
    });
  }
}