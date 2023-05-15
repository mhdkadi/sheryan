import 'package:get/get.dart';
import 'package:sheryan/app/core/services/secure_get_page.dart';
import 'package:sheryan/app/modules/drawer/notifications/notifications_binding.dart';
import 'package:sheryan/app/modules/drawer/notifications/notifications_view.dart';
import 'package:sheryan/app/modules/drawer/orders/orders_binding.dart';
import 'package:sheryan/app/modules/drawer/orders/orders_view.dart';
import 'package:sheryan/app/modules/drawer/profile/profile_binding.dart';
import 'package:sheryan/app/modules/drawer/profile/profile_view.dart';
import 'package:sheryan/app/modules/drawer/shared/constant/drawer_routes.dart';

part 'shared/drawer_pages.dart';

class DrawerModule {
  static List<GetPage> get drawerPages => _DrawerPages.drawerPages;
}
