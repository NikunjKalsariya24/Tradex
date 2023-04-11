import 'package:flutter/material.dart';
import 'package:screen_f/utils/tab_bar.dart';
import 'package:screen_f/Trade_Page/Trade_Wallet/trade_wallet_send.dart';
import 'package:screen_f/Trade_Page/Trade_Wallet/trade_wallet_trasection.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class TradeWalletScreen extends StatefulWidget {
  const TradeWalletScreen({Key? key}) : super(key: key);

  @override
  State<TradeWalletScreen> createState() => _TradeWalletScreenState();
}

class _TradeWalletScreenState extends State<TradeWalletScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabControllerWallet = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: AppColor.colorBlackColor,
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 8.h),
              child: Center(
                  child: CustomText(
                      name: AppString.totalBalance,
                      fontSize: 12.sp,
                      color: AppColor.colorWhiteText))),
          Container(
              padding: EdgeInsets.only(top: 1.h),
              child: Center(
                  child: CustomText(
                      name: AppString.btcBalance,
                      fontSize: 30.sp,
                      color: AppColor.colorWhiteText))),
          Container(
              padding: EdgeInsets.only(top: 1.h),
              child: Center(
                  child: CustomText(
                      name: AppString.buyBtc,
                      fontSize: 18.sp,
                      color: AppColor.colorWhiteText))),
          Container(
              padding: EdgeInsets.only(top: 1.h),
              child: Center(
                  child: CustomText(
                      name: AppString.btcWelcomeNotes,
                      fontSize: 10.sp,
                      color: AppColor.colorYellowFull.withOpacity(0.80)))),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Container(
              height: 6.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.w),
                color: AppColor.colorBlackGradiant,
              ),
              child: Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Icon(
                    Icons.search,
                    color: AppColor.colorWhiteText.withOpacity(0.80),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: CustomText(
                      name: AppString.btcSearch,
                      color: AppColor.colorWhiteText.withOpacity(0.80),
                      fontSize: 12.sp),
                )
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 6.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: AppColor.colorBlackGradiant),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 6.w),
                          child: Image.asset(ImageAssets.arrowDownLeft),
                        ),
                        CustomText(
                          name: AppString.btcDeposit,
                          color: AppColor.colorWhiteText,
                          fontSize: 16.sp,
                        )
                      ],
                    )),
                Container(
                    height: 6.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: AppColor.colorToggleColor),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Image.asset(ImageAssets.arrowUpRight),
                        ),
                        CustomText(
                          name: AppString.btcSend,
                          color: AppColor.colorBlackColor,
                          fontSize: 16.sp,
                        )
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(height: 1.h),
          TabBar(
            controller: tabControllerWallet,
            indicatorColor: AppColor.colorToggleColor,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            indicator: MaterialIndicator(
              horizontalPadding: 10.w,
              bottomLeftRadius: 4.w,
              bottomRightRadius: 4.w,
              topLeftRadius: 4.w,
              topRightRadius: 4.w,
              tabPosition: TabPosition.bottom,
              color: AppColor.colorToggleColor,
              paintingStyle: PaintingStyle.fill,
            ),
            tabs: [
              CustomTabBar(
                name: AppString.btcTransaction,
                fontSize: 14.sp,
              ),
              CustomTabBar(
                name: AppString.btcSuggestions,
                fontSize: 14.sp,
              )
            ],
          ),
          Expanded(
            child: TabBarView(controller: tabControllerWallet, children: [
              TradeWalletTranSectionData(tabControllerWallet),
              TradeWalletSend(tabControllerWallet),
            ]),
          )
        ],
      ),
    );
  }
}
