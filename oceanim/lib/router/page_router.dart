import 'package:fluro/fluro.dart';
import 'package:oceanim/router/page_routes.dart';

class PageRouter {
  static final router = Router();
  static setupRoutes() {
    pageRoutes.forEach((path, handler) {
      router.define(path.toString(),
          handler: handler.getHandler(),
          transitionType: TransitionType.inFromRight);
    });
  }
}
