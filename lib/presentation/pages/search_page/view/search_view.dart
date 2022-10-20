import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/presentation/app_components/widgets/named_widget.dart';
import 'package:spotify_clone/presentation/app_ui/app_color/app_color.dart';
import 'package:spotify_clone/presentation/app_ui/locale_text/locale_text.dart';
import 'package:spotify_clone/presentation/pages/search_page/view/widget/browse_builder.dart';
import 'package:spotify_clone/presentation/pages/search_page/view/widget/search_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.instance.spotifyDark,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 76.h,
              ),
              Text(
                LocaleText.instance.searchTitle,
                style: GoogleFonts.openSans(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColor.instance.spotifyWhite),
              ),
              SizedBox(
                height: 8.h,
              ),
              const SearchBar(),
              SizedBox(
                height: 24.h,
              ),
              NamedWidget(
                text: LocaleText.instance.browseAll,
                textStyle: GoogleFonts.openSans(
                  fontSize: 12.sp,
                  color: AppColor.instance.spotifyWhite,
                  fontWeight: FontWeight.bold,
                ),
                child: const BrowseBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
