import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/presentation/pages/search_page/view/widget/browse_item.dart';

class BrowseBuilder extends StatelessWidget {
  const BrowseBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final browseList = List<BrowseItem>.generate(
        20,
        (index) => BrowseItem(
              index: index,
            ));
    return Wrap(
      spacing: 16.w,
      runSpacing: 15.h,
      children: browseList,
    );
  }
}
