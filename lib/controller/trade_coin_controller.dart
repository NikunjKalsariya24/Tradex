import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:screen_f/model/watch_list.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class TradeCoinController extends GetxController {
  RxBool coinHot = false.obs;
  RxBool coinMarketCap = false.obs;
  RxBool coinPrice = false.obs;
  RxBool coinChange = false.obs;

  RxInt currentValue = 0.obs;
  RxInt vectorCurrentValue = 0.obs;

  List customTabBarList = [
    CustomText(
      name: AppString.appCoinHot,
      fontSize: 12.sp,
      color: AppColor.colorWhiteText,
    ),
    CustomText(
      name: AppString.appCoinMarketCap,
      fontSize: 12.sp,
      color: AppColor.colorWhiteText,
    ),
    Row(
      children: [
        CustomText(
          name: AppString.appCoinPrice,
          fontSize: 12.sp,
          color: AppColor.colorWhiteText,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Image.asset(
            ImageAssets.arrowImage,
            height: 2.h,
          ),
        ),
      ],
    ),
    Row(
      children: [
        CustomText(
          name: AppString.appChange,
          fontSize: 12.sp,
          color: AppColor.colorWhiteText,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Image.asset(
            ImageAssets.arrowImage,
            height: 2.h,
          ),
        ),
      ],
    )
  ];

  List customVectorTabBar = [
    CustomText(
      name: AppString.crypto,
      color: AppColor.colorWhiteText,
      fontSize: 12.sp,
    ),
    CustomText(
      name: AppString.stokes,
      color: AppColor.colorWhiteText,
      fontSize: 12.sp,
    ),
    CustomText(
      name: AppString.forex,
      color: AppColor.colorWhiteText,
      fontSize: 12.sp,
    ),
  ];

  List<dynamic> watchListAll = [
    WatchList(
        coinFName: AppString.bitCoin,
        coinName: AppString.btc,
        coinPrice: AppString.bPrice,
        coinBitCoinPrice: AppString.btcPrice,
        coinDifferance: AppString.btcDif),
    WatchList(
        coinFName: AppString.etheRum,
        coinName: AppString.eth,
        coinPrice: AppString.ePrice,
        coinBitCoinPrice: AppString.etcPrice,
        coinDifferance: AppString.etcDif),
    WatchList(
        coinFName: AppString.binance,
        coinName: AppString.bnbName,
        coinPrice: AppString.binancePrice,
        coinBitCoinPrice: AppString.binPrice,
        coinDifferance: AppString.binanceDif),
    WatchList(
        coinFName: AppString.chzCoin,
        coinName: AppString.chz,
        coinPrice: AppString.ethPrice,
        coinBitCoinPrice: AppString.ethBPrice,
        coinDifferance: AppString.ethDif),
    WatchList(
        coinFName: AppString.binance,
        coinName: AppString.bnbName,
        coinPrice: AppString.moNeroPrice,
        coinBitCoinPrice: AppString.moNeroBitPrice,
        coinDifferance: AppString.moNeroBtcDif),
    WatchList(
        coinFName: AppString.kbrCoin,
        coinName: AppString.ada,
        coinPrice: AppString.moNeroBtcPrice,
        coinBitCoinPrice: AppString.moNeroBtcBitPrice,
        coinDifferance: AppString.moNeroBtcBtcDif),
  ];
}
