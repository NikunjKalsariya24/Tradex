import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/utils/tab_bar.dart';
import 'package:screen_f/coin_list/coin_list.dart';
import 'package:screen_f/controller/trade_coin_controller.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';
import 'package:toggle_switch/toggle_switch.dart';

class TradeVectorScreen extends StatefulWidget {
  const TradeVectorScreen({Key? key}) : super(key: key);

  @override
  State<TradeVectorScreen> createState() => _TradeVectorScreenState();
}

class _TradeVectorScreenState extends State<TradeVectorScreen>
    with TickerProviderStateMixin {
  final TradeCoinController tradeCoinController =
      Get.put(TradeCoinController());
  RxInt toggleIndexValue = 0.obs;

  @override
  Widget build(BuildContext context) {
    TabController tabCController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: AppColor.colorBlackColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.h),
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
                  child: Icon(Icons.search,
                      color: AppColor.colorWhiteText, size: 8.w),
                ),
                Icon(Icons.person, color: AppColor.colorWhiteText, size: 8.w)
              ],
            ),
          ),
          Container(
            height: 5.h,
            width: double.infinity,
            margin: EdgeInsets.only(left: 0.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              border: Border.all(width: 0, color: AppColor.colorBlackGradiant),
            ),
            child: ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 3,
              fontSize: 12.sp,
              minHeight: 5.h,
              customWidths: [33.w, 33.w, 33.w],
              minWidth: double.infinity,
              activeBgColor: const [AppColor.colorBlackGradiant],
              activeFgColor: AppColor.colorWhiteText,
              inactiveBgColor: AppColor.colorBlackColor,
              inactiveFgColor: AppColor.colorYellowFull,
              labels: const [
                AppString.cryptoToggle,
                AppString.stokes,
                AppString.forex
              ],
              onToggle: (index) {
                if (kDebugMode) {
                  print('switched to: $index');
                }
                toggleIndexValue.value = index ?? 0;
              },
            ),
          ),

          Container(
            height: 3.h,
            width: double.infinity,
            margin: EdgeInsets.only(top: 1.h),
            child: TabBar(
                controller: tabCController,
                labelPadding: EdgeInsets.symmetric(horizontal: 3.w),
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    color: AppColor.colorBlackGradiant,
                    borderRadius: BorderRadius.circular(1.w)),
                tabs: [
                  CustomTabBar(name: AppString.allAssets, fontSize: 8.sp),
                  CustomTabBar(name: AppString.favorites, fontSize: 8.sp),
                  CustomTabBar(name: AppString.price, fontSize: 8.sp),
                  CustomTabBar(name: AppString.appChange, fontSize: 8.sp),
                ]),
          ),

          Obx(() => toggleIndexValue.value == 0
              ? _cryptoTab()
              : toggleIndexValue.value == 1
                  ? _stokeTab()
                  : _forex()),
          // _vectorTabCustomWidget(),
        ],
      ),
    );
  }

  _cryptoTab() {
    return Expanded(
      child: ListView.builder(
        itemCount: CoinList.allAssets.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    CoinList.coinBtcImages[index],
                    fit: BoxFit.fill,
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    CustomText(
                        name: CoinList.allAssets[index].coinName,
                        color: AppColor.colorWhiteText,
                        fontSize: 14.sp),
                    CustomText(
                        name: CoinList.allAssets[index].coinFName,
                        color: AppColor.colorYellowFull,
                        fontSize: 12.sp),
                  ],
                ),
                const Spacer(),
                Image.asset(CoinList.btcCoinGraph[index], fit: BoxFit.fill),
                const Spacer(),
                Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(
                        name: CoinList.allAssets[index].coinBitCoinPrice,
                        color: AppColor.colorWhiteText,
                        fontSize: 14.sp),
                    CustomText(
                        name: CoinList.allAssets[index].coinDifferance,
                        color: index == 5 || index == 6
                            ? AppColor.colorListDown
                            : AppColor.colorList,
                        fontSize: 14.sp),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _stokeTab() {
    return Expanded(
        child: Container(
      color: AppColor.colorBlackColor,
    ));
  }

  _forex() {
    return Expanded(
        child: Container(
      color: AppColor.colorBlackColor,
    ));
  }
}
