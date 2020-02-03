import 'package:lemon/pages/layout/home/home_page.dart';
import 'package:lemon/pages/layout/login/login_page.dart';
import 'package:lemon/router/page_builder.dart';

enum PageName { login_page, home_page }

final Map<PageName, PageBuilder> pageRoutes = {
  PageName.login_page: PageBuilder(builderFunc: (bundle) => LoginPage()),
  PageName.home_page: PageBuilder(builderFunc: (bundle) => HomePage())
};
