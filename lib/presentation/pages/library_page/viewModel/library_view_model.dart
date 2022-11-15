import 'package:get/get.dart';

import '../../../../core/base/model/base_view_model.dart';

class LibraryViewModel extends GetxController with BaseViewModel {
  RxBool playlistLayout = false.obs;

  void changeLayout(RxBool state) {
    state.value = !state.value;
  }

  @override
  void init() {}
}
