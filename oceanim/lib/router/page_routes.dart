import 'package:oceanim/pages/layout/discovery/discovery.dart';
import 'package:oceanim/pages/layout/firends/friends.dart';
import 'package:oceanim/pages/layout/firends/add_friend.dart';
import 'package:oceanim/pages/layout/firends/group.dart';
import 'package:oceanim/pages/layout/firends/heart.dart';
import 'package:oceanim/pages/layout/firends/tag.dart';
import 'package:oceanim/pages/layout/message/message.dart';
import 'package:oceanim/pages/layout/message/chatting.dart';
import 'package:oceanim/pages/layout/login/login.dart';
import 'package:oceanim/pages/layout/login/register.dart';
import 'package:oceanim/pages/layout/mine/mine.dart';
import 'package:oceanim/pages/layout/mine/collection.dart';
import 'package:oceanim/pages/layout/mine/photo_album.dart';
import 'package:oceanim/pages/layout/setting/setting.dart';
import 'package:oceanim/pages/tab/bottom_tab_bar.dart';
import 'package:oceanim/pages/layout/userdetial/userdetial.dart';
import 'package:oceanim/router/page_builder.dart';

enum PageName {
  login,
  message,
  friends,
  discovery,
  mine,
  bottom_tab,
  chatting,
  register,
  add_friend,
  heart,
  group,
  tag,
  setting,
  collection,
  photo_album,
  userdetial,
}
final Map<PageName, PageBulider> pageRoutes = {
  PageName.login: PageBulider(buliderFunc: (bundle) => LoginPage()),
  PageName.message: PageBulider(buliderFunc: (bundle) => MessagePage()),
  PageName.friends: PageBulider(buliderFunc: (bundle) => FriendsPage()),
  PageName.discovery: PageBulider(buliderFunc: (bundle) => DiscoveryPage()),
  PageName.mine: PageBulider(buliderFunc: (bundle) => MinePage(bundle)),
  PageName.collection: PageBulider(buliderFunc: (bundle) => CollectionPage()),
  PageName.photo_album: PageBulider(buliderFunc: (bundle) => PhotoAlbumPage()),
  PageName.bottom_tab:
      PageBulider(buliderFunc: (bundle) => BottomTabBar(bundle)),
  PageName.chatting: PageBulider(buliderFunc: (bundle) => ChattingPage(bundle)),
  PageName.register: PageBulider(buliderFunc: (bundle) => RegisterPage()),
  PageName.add_friend: PageBulider(buliderFunc: (bundle) => AddFriendPage()),
  PageName.group: PageBulider(buliderFunc: (bundle) => GroupPage()),
  PageName.tag: PageBulider(buliderFunc: (bundle) => TagPage()),
  PageName.heart: PageBulider(buliderFunc: (bundle) => HeartPage()),
  PageName.setting: PageBulider(buliderFunc: (bundle) => SettingPage()),
  PageName.userdetial: PageBulider(buliderFunc: (bundle) => UserDetialPage(bundle)),
};
