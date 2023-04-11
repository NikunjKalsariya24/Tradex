import 'package:flutter/material.dart';
import 'package:screen_f/coin_list/coin_list.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class TradeWalletSend extends StatelessWidget {
  TabController tabControllerWallet;

  TradeWalletSend(this.tabControllerWallet, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CoinList.tradeSuggestion.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 3.h, right: 3.h, bottom: 5.w),
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
                border:
                    Border.all(width: 1, color: AppColor.colorBlackGradiant),
                borderRadius: BorderRadius.circular(3)),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(1.h),
                      child: Image.asset(CoinList
                          .tradeSuggestion[index].tradeImage
                          .toString()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: CustomText(
                          name: CoinList.tradeSuggestion[index].tradeName,
                          color: AppColor.colorWhiteText,
                          fontSize: 16.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.w, top: 1.w),
                      child: CustomText(
                          name: CoinList.tradeSuggestion[index].tradeFullName,
                          color: AppColor.colorWhiteText),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: CustomText(
                      name: CoinList.tradeSuggestion[index].tradeDescription,
                      color: AppColor.colorWhiteText.withOpacity(0.60),
                      fontSize: 10.sp),
                ),
                Divider(
                    // height: 5.h,
                    thickness: 1,
                    color: AppColor.colorBlackGradiant,
                    indent: 8.w,
                    endIndent: 10.w),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, bottom: 3.w),
                      child: CustomText(
                          name: CoinList.tradeSuggestion[index].tradePrice,
                          color: AppColor.colorWhiteText,
                          fontSize: 12.sp),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: Container(
                        height: 3.h,
                        width: 16.w,
                        margin: EdgeInsets.only(bottom: 1.w),
                        decoration: BoxDecoration(
                            color: AppColor.colorToggleColor,
                            borderRadius: BorderRadius.circular(3.w)),
                        child: Center(
                          child: Text(
                            AppString.btcBuy,
                            style: TextStyle(
                                color: AppColor.colorBlackColor,
                                fontSize: 12.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
