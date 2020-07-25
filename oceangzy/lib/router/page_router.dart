import 'package:fluro/fluro.dart';
import 'package:oceangzy/router/page_routes.dart';

class PageRouter {
  static final router = Router();
  static setupRoutes() {
    pageRoutes.forEach((path, handler) {
      print(path);
      print(handler);
      print("路由测试");
      print(path.toString());
      print(handler.toString());
      if (path.toString() == 'PageName.single_image' ||
          path.toString() == 'PageName.gallery_image') {
        router.define(path.toString(),
            handler: handler.getHandler(),
            transitionType: TransitionType.fadeIn);
      } else {
        router.define(path.toString(),
            handler: handler.getHandler(),
            transitionType: TransitionType.inFromRight);
      }
    });
  }
}
