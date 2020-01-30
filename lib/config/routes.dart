import 'package:custed2/core/route.dart';
import 'package:custed2/ui/home_tab/about_page.dart';
import 'package:custed2/ui/pages/cbs_page.dart';
import 'package:custed2/ui/pages/cet_avatar_page.dart';
import 'package:custed2/ui/pages/debug_page.dart';
import 'package:custed2/ui/pages/iecard_web_page.dart';
import 'package:custed2/ui/pages/jw_web_page.dart';
import 'package:custed2/ui/pages/login_page.dart';

final loginPage = AppRoute(
  title: '登录',
  page: LoginPage(),
);

final debugPage = AppRoute(
  title: 'Terminal',
  page: DebugPage(),
);

final cbsPage = AppRoute(
  title: 'CBS',
  page: CbsPage(),
);

final aboutPage = AppRoute(
  title: '关于',
  page: AboutPage(),
);

final cetAvatarPage = AppRoute(
  title: '四六级照片',
  page: CetAvatarPage(),
);

final jwWebPage = AppRoute(
  title: '教务系统',
  page: JwWebPage(),
);

final iecardWebPage = AppRoute(
  title: '一卡通',
  page: IecardWebPage(),
);