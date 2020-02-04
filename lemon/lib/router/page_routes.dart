import 'package:lemon/pages/layout/home/home_image_view.dart';
import 'package:lemon/pages/layout/home/home_page.dart';
import 'package:lemon/pages/layout/home/home_view_detail.dart';
import 'package:lemon/pages/layout/login/login_page.dart';
import 'package:lemon/router/page_builder.dart';

enum PageName { login_page, home_page ,home_view_detail, home_image_view_page}

final Map<PageName, PageBuilder> pageRoutes = {
  PageName.login_page: PageBuilder(builderFunc: (bundle) => LoginPage()),
  PageName.home_page: PageBuilder(builderFunc: (bundle) => HomePage()),
  PageName.home_view_detail: PageBuilder(builderFunc: (bundle) => HomeViewDetialPage(bundle)),
  PageName.home_image_view_page: PageBuilder(builderFunc: (bundle) => HomeImageViewPage(bundle)),
};
