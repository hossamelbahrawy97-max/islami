import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/quran/widget/most_recent_widget.dart';
import 'package:islami_app/ui/home/tabs/quran/widget/sura_item_widget.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_fonts.dart';
import 'package:islami_app/ui/utils/app_routes.dart';
import 'package:islami_app/ui/utils/context_extension_media_query.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: context.height * 0.02,
        children: [
          TextField(

              cursorColor: AppColors.primaryColor,
              style: TextStyle(color: AppColors.whiteColor),
              decoration:
              InputDecoration(
                  enabledBorder: outlineInputBorder(),
                  focusedBorder: outlineInputBorder(),
                  prefixIcon: Image.asset(AppAssets.iconSearch),
                  hintText: 'Sura Name',
                  hintStyle: AppFonts.bold16white

              )
          ),
          Text('Most Recently',
            style: AppFonts.bold16white,
          ),
          MostRecentWidget(),
          Text('Suras List', style: AppFonts.bold16white,),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: SuraItemWidget(index: index,),
                      onTap: () {
                        Navigator.of(context).
                        pushNamed(
                            AppRoutes.suraDetailsRouteName, arguments: index);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: context.height * 0.01),
                      child: Divider(
                        thickness: context.height * 0.0009,
                        color: AppColors.whiteColor,
                        endIndent: context.width * 0.1,
                        indent: context.width * 0.1,
                      ),
                    );
                  },
                  itemCount: 114)
          )
        ],
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColors.primaryColor),
    );

  }
}
