import 'package:flutter/material.dart';
import 'package:screen_f/utils/tab_bar.dart';
import 'package:screen_f/Trade_Page/Trade_HomePage/trade_coin.dart';
import 'package:screen_f/Trade_Page/Trade_HomePage/trade_watchlist.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class TradeHomePage extends StatefulWidget {
  const TradeHomePage({Key? key}) : super(key: key);

  @override
  State<TradeHomePage> createState() => _TradeHomePageState();
}

class _TradeHomePageState extends State<TradeHomePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabControllerHome = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: AppColor.colorBlackColor,
      body: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.colorBlackColor,
              expandedHeight: 30.h,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 30.h,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 4.h),
                  child: Image.asset(ImageAssets.tradeHomeBgImagePath),
                ),
              ),
              actions: [
                tradeXAppBar(),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(6.h),
                child: TabBar(
                  controller: tabControllerHome,
                  isScrollable: false,
                  indicatorColor: Colors.yellow,
                  indicatorSize: TabBarIndicatorSize.label,
                  padding: EdgeInsets.only(right: 5.w),
                  indicatorWeight: 2.0,
                  indicatorPadding: EdgeInsets.symmetric(vertical: 1.5.h),
                  tabs: [
                    CustomTabBar(
                      name: AppString.appCoin,
                      fontSize: 12.sp,
                    ),
                    CustomTabBar(
                      name: AppString.appWatchList,
                      fontSize: 12.sp,
                    ),
                    CustomTabBar(
                      name: AppString.appNewest,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: tabControllerHome,
          children: [
            TradeCoin(controller: tabControllerHome),
            TradeWatchList(controller: tabControllerHome),
            Container(),
          ],
        ),
      ),
    );
  }

  Widget tradeXAppBar() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 8.h,
            margin: EdgeInsets.only(left: 1.w),
            child: CustomText(
              name: AppString.appTrad,
              fontFamily: AppString.fontFamily,
              fontSize: 30.sp,
              color: AppColor.colorWhiteText,
            ),
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: 30.w,
            ),
            child:
                Icon(Icons.search, color: AppColor.colorWhiteText, size: 8.w),
          ),
          Icon(Icons.person, color: AppColor.colorWhiteText, size: 8.w)
        ],
      ),
    );
  }
}
