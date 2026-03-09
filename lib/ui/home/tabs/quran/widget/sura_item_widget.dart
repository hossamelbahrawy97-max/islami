import 'package:flutter/material.dart';
import 'package:islami_app/model/quran_resources.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_fonts.dart';
import 'package:islami_app/ui/utils/context_extension_media_query.dart';

class SuraItemWidget extends StatelessWidget {
  int index;

  SuraItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: context.width * 0.055,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.suraVector),
            Text('${index + 1}', style: AppFonts.bold16white),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: context.height * 0.008,
          children: [
            Text(
              QuranResources.englishQuranSuraList[index],
              style: AppFonts.bold20white,
            ),
            Text(
              '${QuranResources.versesNumberList[index]} Verses',
              style: AppFonts.bold14white,
            ),
          ],
        ),
        Spacer(),
        Text(
          QuranResources.arabicQuranSuraList[index],
          style: AppFonts.bold20white,
        ),
      ],
    );
  }
}
