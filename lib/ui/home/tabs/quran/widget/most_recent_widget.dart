import 'package:flutter/material.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/app_fonts.dart';
import 'package:islami_app/ui/utils/context_extension_media_query.dart';

class MostRecentWidget extends StatelessWidget {
  const MostRecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1609,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(
              left: context.width * 0.03,
              top: context.height * 0.007,
              bottom: context.height * 0.007,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryColor,
            ),
            width: context.width * 0.65,

            child: Row(
              children: [
                Column(
                  spacing: context.height * 0.008,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Al-Anbiya', style: AppFonts.bold24black),
                    Text('الأنبياء', style: AppFonts.bold24black),
                    Text('112 Verses', style: AppFonts.bold14black),
                  ],
                ),
                Image.asset(AppAssets.mostRecentlyImage),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: context.width * 0.02);
        },
        itemCount: 10,
      ),
    );
  }
}
