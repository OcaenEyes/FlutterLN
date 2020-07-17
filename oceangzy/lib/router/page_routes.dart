import 'package:oceangzy/pages/tab/bottom_tab_bar.dart';
import 'package:oceangzy/pages/layout/information/information_page.dart';
import 'package:oceangzy/pages/layout/home/home_page.dart';
import 'package:oceangzy/router/page_builder.dart';

enum PageName {
  bottom_tab,
  information_page,
  home_page

}

final Map<PageName, PageBuilder> pageRoutes = {
  PageName.bottom_tab: PageBuilder(builderFunc: (bundle) => BottomTabBar()),
  PageName.information_page: PageBuilder(builderFunc: (bundle) => InformationPage()),
  PageName.home_page: PageBuilder(builderFunc: (bundle) => HomePage()),
};
