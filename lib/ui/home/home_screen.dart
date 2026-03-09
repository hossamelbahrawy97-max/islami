import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app/ui/home/tabs/quran/quran_tab.dart';
import 'package:islami_app/ui/home/tabs/radio/radio_tab.dart';
import 'package:islami_app/ui/home/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/ui/home/tabs/time/time_tab.dart';
import 'package:islami_app/ui/utils/app_assets.dart';
import 'package:islami_app/ui/utils/app_colors.dart';
import 'package:islami_app/ui/utils/context_extension_media_query.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> backgroundImages = [
    AppAssets.quranBg,
    AppAssets.hadethBg,
    AppAssets.sebhsBg,
    AppAssets.radioBg,
    AppAssets.timeBg,
  ];
  List<Widget> tabList = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  @override
  Widget build(BuildContext context) {

    return Stack(

      children: [
        Image.asset(backgroundImages[selectedIndex], width: double.infinity,
          height: double.infinity, fit: BoxFit.fill,),
        SafeArea(
          child: Scaffold(
              backgroundColor: AppColors.transparentColor,
              body:
              Column(
                  spacing: context.height * 0.02,
                  children: [
                    Image.asset(AppAssets.logoIslami,
                        width: context.width * 0.67,
                        height: context.height * 0.183),
                    Expanded(
                        child: tabList[selectedIndex]
                    )
                  ]
              ),
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                    index = selectedIndex;
                  },

                  items:
                  [
                    builtBottomNavigationBarItem(
                        index: 0,
                        iconName: AppAssets.iconQuran,
                        label: 'Quran'),

                    builtBottomNavigationBarItem(
                        index: 1,
                        iconName: AppAssets.iconHadeth,
                        label: 'Hadeth'),

                    builtBottomNavigationBarItem(
                        index: 2,
                        iconName: AppAssets.iconSebha,
                        label: 'Sebha'),

                    builtBottomNavigationBarItem(
                        index: 3,
                        iconName: AppAssets.iconRadio,
                        label: 'Radio'),

                    builtBottomNavigationBarItem(
                        index: 4,
                        iconName: AppAssets.iconTime,
                        label: 'Time'),


                  ]
              )
          ),
        )
      ],
    );
  }

  Widget bottomNavigationBar({required int index, required String iconName}) {
    return selectedIndex == index ? Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: AppColors.blackBgColor,

        ),
        child: ImageIcon(AssetImage(iconName),

        )
    ) :
    ImageIcon(AssetImage(iconName));
  }

  BottomNavigationBarItem builtBottomNavigationBarItem(
      {required int index, required String iconName, required String label}) {
    return BottomNavigationBarItem(
        icon:
        bottomNavigationBar(index: index, iconName: iconName),
        label: label);
  }
}
