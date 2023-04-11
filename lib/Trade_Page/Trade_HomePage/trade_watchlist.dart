import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_f/controller/trade_coin_controller.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class TradeWatchList extends StatelessWidget {
  final TabController controller;

  TradeWatchList({Key? key, required this.controller}) : super(key: key);
  final TradeCoinController tradeCoinController =
      Get.put(TradeCoinController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: GridView.builder(
                  itemCount: tradeCoinController.watchListAll.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.4),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 10.h,
                      width: 40.w,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColor.colorBlackBottomSS,
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                      child: Column(children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5.w, top: 3.w),
                          child: CustomText(
                              name: tradeCoinController
                                  .watchListAll[index].coinFName,
                              color: AppColor.colorWhiteText,
                              fontSize: 16.sp),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 5.w),
                            child: CustomText(
                              name: tradeCoinController
                                  .watchListAll[index].coinName,
                              color: AppColor.colorWhiteText,
                              fontSize: 10.sp,
                            )),
                        const Spacer(),
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 5.w),
                            child: CustomText(
                              name: tradeCoinController
                                  .watchListAll[index].coinPrice,
                              color: AppColor.colorWhiteText,
                              fontSize: 10.sp,
                            )),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 5.w),
                          child: CustomText(
                            name: tradeCoinController
                                .watchListAll[index].coinBitCoinPrice,
                            color: AppColor.colorWhiteText,
                            fontSize: 10.sp,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 8.w),
                          child: CustomText(
                            name: tradeCoinController
                                .watchListAll[index].coinDifferance,
                            color: AppColor.colorGrid,
                            fontSize: 10.sp,
                          ),
                        ),
                      ]),
                    );
                  },
                ),
              ),
              // Spacer(),
              SizedBox(
                height: 1.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
                      fontSize: 16.sp,
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
                      fontSize: 16.sp,
                    ))),
              ])
            ],
          ),
          // Spacer(),
        ],
      ),
    );
  }
}
