import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/pages/library_page/view/widgets/grid_layout.dart';
import 'package:spotify_clone/presentation/pages/library_page/view/widgets/library_sort_bar.dart';
import 'package:spotify_clone/presentation/pages/library_page/view/widgets/list_layout.dart';

import '../../../../core/base/view/base_view.dart';
import '../viewModel/library_view_model.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LibraryViewModel>(
        viewModel: LibraryViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, LibraryViewModel viewModel) {
          return Scaffold(
            backgroundColor: AppColor.instance.spotifyDark,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SafeArea(
                  child: Obx(() => Column(
                        children: [
                          LibrarySortBar(
                            viewModel: viewModel,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          viewModel.playlistLayout.value
                              ? const GridLayout()
                              : const ListLayout(),
                        ],
                      )),
                ),
              ),
            ),
          );
        });
  }
}
