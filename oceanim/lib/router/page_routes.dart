import 'package:oceanim/pages/layout/discovery/discovery.dart';
import 'package:oceanim/pages/layout/firends/friends.dart';
import 'package:oceanim/pages/layout/message/message.dart';
import 'package:oceanim/pages/layout/message/chatting.dart';
import 'package:oceanim/pages/layout/login/login.dart';
import 'package:oceanim/pages/layout/login/register.dart';
import 'package:oceanim/pages/layout/mine/mine.dart';
import 'package:oceanim/pages/tab/bottom_tab_bar.dart';
import 'package:oceanim/router/page_builder.dart';

enum PageName {
  login,
  message,
  friends,
  discovery,
  mine,
  bottom_tab,
  chatting,
  register
}
final Map<PageName, PageBulider> pageRoutes = {
  PageName.login: PageBulider(buliderFunc: (bundle) => LoginPage()),
  PageName.message: PageBulider(buliderFunc: (bundle) => MessagePage()),
  PageName.friends: PageBulider(buliderFunc: (bundle) => FriendsPage()),
  PageName.discovery: PageBulider(buliderFunc: (bundle) => DiscoveryPage()),
  PageName.mine: PageBulider(buliderFunc: (bundle) => MinePage(bundle)),
  PageName.bottom_tab:
      PageBulider(buliderFunc: (bundle) => BottomTabBar(bundle)),
  PageName.chatting: PageBulider(buliderFunc: (bundle) => ChattingPage(bundle)),
  PageName.register: PageBulider(buliderFunc: (bundle) => RegisterPage()),
};
