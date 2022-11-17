import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/core/base/view/base_stateful_view.dart';
import 'package:spotify_clone/presentation/pages/app_tab_bar_page/view/widgets/app_tab_bar_widget.dart';
import 'package:spotify_clone/presentation/pages/library_page/view/library_view.dart';
import 'package:spotify_clone/presentation/pages/welcome_page/view/welcome_view.dart';
import '../viewmodel/app_tab_bar_viewmodel.dart';

class AppTabBarView extends StatelessWidget {
  const AppTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseStatefulView<AppTabBarViewModel>(
        viewModel: AppTabBarViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, AppTabBarViewModel viewModel) {
          return Scaffold(
            bottomNavigationBar: PreferredSize(
              preferredSize: Size.fromHeight(86.h),
              child: SizedBox(
                height: 86.h,
                child: Theme(
                    data: ThemeData(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent),
                    child: AppTabBarWidget(
                      viewModel: viewModel,
                    )),
              ),
            ),
            body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: viewModel.appTabProvider.controller,
                children: const [WelcomeView(), SizedBox(), LibraryView()]),
          );
        });
  }
}
