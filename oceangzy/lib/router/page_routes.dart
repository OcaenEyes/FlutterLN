import 'package:oceangzy/pages/tab/bottom_tab_bar.dart';
import 'package:oceangzy/router/page_builder.dart';

enum PageName {
  bottom_tab,

}

final Map<PageName, PageBuilder> pageRoutes = {
  PageName.bottom_tab: PageBuilder(builderFunc: (bundle) => BottomTabBar()),
};
