import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/coin_list/coin_list.dart';
import 'package:screen_f/controller/trade_coin_controller.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class TradeCoin extends StatelessWidget {
  final TabController controller;

  TradeCoin({Key? key, required this.controller}) : super(key: key);

  final TradeCoinController tradeCoinController =
      Get.put(TradeCoinController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _coinTabCustomWidget(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: ListView.builder(
              itemCount: CoinList.coinImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
                  child: Row(
                    children: [
                      // Container(height: 8.h,margin: EdgeInsets.only(left: 3.w),child: Center(child:
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          CoinList.coinImages[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                      // )),
                      const Spacer(),

                      Column(
                        children: [
                          CustomText(
                              name: CoinList.coinName[index],
                              fontSize: 18.sp,
                              color: AppColor.colorWhiteText),
                          CustomText(
                              name: CoinList.coinFullName[index],
                              fontSize: 12.sp,
                              color: AppColor.colorWhiteText),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(CoinList.coinGraph[index]),
                      const Spacer(),
                      Column(crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                              name: CoinList.coinValue[index],
                              fontSize: 18.sp,
                              color: AppColor.colorWhiteText),
                          CustomText(
                              name: CoinList.coinValueDifferance[index],
                              fontSize: 12.sp,
                              color: AppColor.colorWhiteText),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 5.h,
              color: Colors.yellow,
            ),
            Container(
              height: 5.h,
              color: Colors.yellow,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 5.h,
                width: 40.w,
                margin: EdgeInsets.only(left: 1.w, bottom: 1.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: AppColor.colorBlackBottomSS),
                child: Center(
                    child: CustomText(
                  name: AppString.appDeposit,
                  color: AppColor.colorWhiteText,
                  fontSize: 20.sp,
                ))),
            Container(
                height: 5.h,
                width: 40.w,
                margin: EdgeInsets.only(left: 1.w, bottom: 1.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    color: AppColor.colorToggleColor),
                child: Center(
                    child: CustomText(
                  name: AppString.appBuy,
                  color: AppColor.colorBlackColor,
                  fontSize: 20.sp,
                ))),
          ],
        )
      ],
    );
  }

  _coinTabCustomWidget() {
    return Container(
      margin: EdgeInsets.only(left: 3.w),
      width: double.infinity,
      height: 4.h,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemCount: tradeCoinController.customTabBarList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Obx(() => Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        tradeCoinController.currentValue.value = index;
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                            color:
                                tradeCoinController.currentValue.value == index
                                    ? AppColor.colorBlackBottomSS
                                    : Colors.black,
                            borderRadius: BorderRadius.circular(2.w)),
                        margin:
                            EdgeInsets.only(left: 3.w, right: 3.w, top: 1.w),
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        height: 3.h,
                        child: Center(
                          child: tradeCoinController.customTabBarList[index],
                        ),
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
