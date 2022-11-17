import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/core/components/text/locale_text.dart';
import 'package:spotify_clone/generated/locale_keys.g.dart';
import '../../../../app_components/widgets/app_image_widget.dart';
import '../../../../app_ui/app_color/app_color.dart';
import '../../../../app_ui/app_image/app_image.dart';
import '../../viewmodel/app_tab_bar_viewmodel.dart';

class AppTabBarWidget extends StatelessWidget {
  final AppTabBarViewModel viewModel;
  const AppTabBarWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: viewModel,
      builder: (vm) {
        return TabBar(
          indicatorColor: Colors.transparent,
          onTap: viewModel.onTapTabBar,
          labelColor: AppColor.instance.spotifyWhite,
          unselectedLabelColor: AppColor.instance.lightGrey,
          labelStyle: GoogleFonts.openSans(
              fontSize: 12.sp, fontWeight: FontWeight.w500),
          unselectedLabelStyle: GoogleFonts.openSans(
              fontSize: 12.sp, fontWeight: FontWeight.w500),
          controller: viewModel.appTabProvider.controller,
          tabs: <Widget>[
            Tab(
              child: Column(
                children: [
                  AppImageWidget(
                    name: viewModel.appTabProvider.controller.index == 0
                        ? AppImage.instance.iconHomeOutlined
                        : AppImage.instance.iconHomeFilled,
                    height: 25,
                    width: 28,
                    color: viewModel.appTabProvider.controller.index == 0
                        ? AppColor.instance.spotifyWhite
                        : AppColor.instance.lightGrey,
                  ),
                  const LocaleText(LocaleKeys.home),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  AppImageWidget(
                    name: viewModel.appTabProvider.controller.index == 1
                        ? AppImage.instance.iconSearchFilled
                        : AppImage.instance.iconSearchOutlined,
                    height: 25,
                    width: 28,
                    color: viewModel.appTabProvider.controller.index == 1
                        ? AppColor.instance.spotifyWhite
                        : AppColor.instance.lightGrey,
                  ),
                  const LocaleText(LocaleKeys.search),
                ],
              ),
            ),
            Tab(
              child: Column(
                children: [
                  AppImageWidget(
                    name: viewModel.appTabProvider.controller.index == 2
                        ? AppImage.instance.iconLibraryFilled
                        : AppImage.instance.iconLibraryOutlined,
                    height: 25,
                    width: 28,
                    color: viewModel.appTabProvider.controller.index == 2
                        ? AppColor.instance.spotifyWhite
                        : AppColor.instance.lightGrey,
                  ),
                  const LocaleText(LocaleKeys.your_library),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
