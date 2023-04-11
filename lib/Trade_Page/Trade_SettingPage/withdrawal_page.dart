import 'package:flutter/material.dart';
import 'package:screen_f/Trade_Page/Trade_Wallet/withdrawal_data.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.colorBlackColor,
        body: SingleChildScrollView(physics:const BouncingScrollPhysics() ,
          child: Column(children: [
            Row(
              children: [
                Image.asset(
                    height: 4.h,
                    width: 8.w,
                    ImageAssets.arrowLeft,
                    fit: BoxFit.fill),
                const Spacer(),
                Image.asset(ImageAssets.headphone),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Container(
                  height: 8.h,
                  margin: EdgeInsets.only(left: 6.w),
                  child:
                      Image.asset(ImageAssets.withdrawalImage, fit: BoxFit.fill),
                ),
                // SizedBox(width: 3.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: CustomText(
                        name: AppString.user,
                        color: AppColor.colorWhiteText,
                        fontSize: 16.sp,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: CustomText(
                        textAlign: TextAlign.start,
                        name: AppString.tradeXId,
                        color: AppColor.colorWhiteText.withOpacity(0.60),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  color: AppColor.colorBlackGradiant,
                  child: Row(
                    children: [
                      Image.asset(ImageAssets.verification),
                      CustomText(
                        name: AppString.verification,
                        color: AppColor.colorWhiteText,
                        fontSize: 12.sp,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 1.h),
            Container(
              margin: EdgeInsets.only(left: 15.w),
              child: CustomText(
                name: AppString.withdrawalNotification,
                color: AppColor.colorWhiteText,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            WithdrawalData(
              withdrawalImageName: ImageAssets.verification,
              withdrawalName: AppString.verification,
            ),
            WithdrawalData(
              withdrawalName: ImageAssets.learn,
              withdrawalImageName: ImageAssets.learn,
            ),
            WithdrawalData(
              withdrawalImageName: ImageAssets.cryptoCard,
              withdrawalName: AppString.cryptoCard,
            ),
            WithdrawalData(
              withdrawalImageName: ImageAssets.paymentMethod,
              withdrawalName: AppString.paymentMethod,
            ),
            WithdrawalData(
              withdrawalImageName: ImageAssets.invite,
              withdrawalName: AppString.invite,
            ),
            WithdrawalData(
              withdrawalImageName: ImageAssets.sendGift,
              withdrawalName: AppString.sendGift,
            ),
            WithdrawalData(
              withdrawalImageName: ImageAssets.texes,
              withdrawalName: AppString.texts,
            ),
            WithdrawalData(
              withdrawalImageName: ImageAssets.accountSecurity,
              withdrawalName: AppString.accountSecurity,
            ),
            SizedBox(
              height: 6.h,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 4.w, right: 4.w),
              padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
              decoration: BoxDecoration(
                  color: AppColor.colorBlackGradiant,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: CustomText(
                name: AppString.logout,
                fontSize: 16.sp,
                color: AppColor.colorWhiteText,
              )),
            )
          ]),
        ),
      ),
    );
  }
}
