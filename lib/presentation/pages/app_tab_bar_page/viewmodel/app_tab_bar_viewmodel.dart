import 'package:get/get.dart';

import '../../../../core/base/model/base_view_model.dart';
import '../service/app_tab_provider.dart';

class AppTabBarViewModel extends GetxController with BaseViewModel {
  late final AppTabProvider appTabProvider;

  void onTapTabBar(int index) {
    update();
  }

  @override
  void init() {
    appTabProvider = Get.put(AppTabProvider());
  }
}
