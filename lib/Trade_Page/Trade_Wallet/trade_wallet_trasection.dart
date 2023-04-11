import 'package:flutter/material.dart';
import 'package:screen_f/coin_list/coin_list.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class TradeWalletTranSectionData extends StatelessWidget {
  TabController tabControllerWallet;

  TradeWalletTranSectionData(this.tabControllerWallet, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CoinList.walletTransaction.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
          child: Container(
            height: 8.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.w),
                border:
                    Border.all(color: AppColor.colorBlackGradiant, width: 1.w)),
            child: Row(children: [
              Image.asset(
                  CoinList.walletTransaction[index].imageDAta.toString()),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(   textAlign: TextAlign.start,
                    name: CoinList.walletTransaction[index].tranJecTioN,
                    color: AppColor.colorWhiteText,
                    fontSize: 16.sp,
                  ),
                  CustomText(
                    name: CoinList.walletTransaction[index].tranJecTioNTime,
                    color: AppColor.colorWhiteText.withOpacity(0.60),
                  )
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                      name: CoinList.walletTransaction[index].coinPrice,
                      color: AppColor.colorWhiteText, fontSize: 12.sp,),

                  CustomText(
                    textAlign: TextAlign.end,
                    name: CoinList.walletTransaction[index].differance,
                    color: AppColor.colorGrid,
                  )
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}
