import 'package:flutter/material.dart';
import 'package:screen_f/Trade_Page/Trade_SettingPage/trade_grid.dart';
import 'package:screen_f/Trade_Page/Trade_HomePage/trade_homepage.dart';
import 'package:screen_f/Trade_Page/Trade_Vector/trade_vector.dart';
import 'package:screen_f/Trade_Page/Trade_Wallet/trade_wallet.dart';
import 'package:screen_f/utils/app_assets.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class TradePage extends StatefulWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  int currentNavigationTab = 0;

  final List<Widget> screen = [
    const TradeHomePage(),
    const TradeVectorScreen(),
    const TradeWalletScreen(),
    const TradeGridScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const TradeHomePage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: PageStorage(bucket: bucket, child: currentScreen),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 8.h,
              decoration:
                  const BoxDecoration(color: AppColor.colorBlackGradiant),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              currentScreen = const TradeHomePage();
                              currentNavigationTab = 0;
                            },
                          );
                        },
                        child: SizedBox(
                          height: 10.h,
                          width: 20.w,
                          child: Image.asset(
                            ImageAssets.tradeHomeImagePath,
                            color: currentNavigationTab == 0
                                ? AppColor.colorToggleColor
                                : AppColor.colorWhiteText,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              currentScreen = const TradeVectorScreen();
                              currentNavigationTab = 1;
                            },
                          );
                        },
                        child: SizedBox(
                          height: 10.h,
                          width: 20.w,
                          child: Image.asset(
                            ImageAssets.tradeVectorImagePath,
                            color: currentNavigationTab == 1
                                ? AppColor.colorToggleColor
                                : AppColor.colorWhiteText,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentScreen = const TradeWalletScreen();
                            currentNavigationTab = 2;
                          });
                        },
                        child: SizedBox(
                          height: 10.h,
                          width: 20.w,
                          child: Image.asset(
                            ImageAssets.tradeWalletImagePath,
                            color: currentNavigationTab == 2
                                ? AppColor.colorToggleColor
                                : AppColor.colorWhiteText,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentScreen = const TradeGridScreen();
                            currentNavigationTab = 3;
                          });
                        },
                        child: SizedBox(
                          height: 10.h,
                          width: 20.w,
                          child: Image.asset(
                            ImageAssets.tradeGridImagePath,
                            color: currentNavigationTab == 3
                                ? AppColor.colorToggleColor
                                : AppColor.colorWhiteText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                useRootNavigator: true,
                context: context,
                builder: (context) {
                  return Container(
                    height: 20.h,
                    width: double.infinity,
                    decoration:
                        const BoxDecoration(color: AppColor.colorBlackGradiant),
                    child: Column(
                      children: [
                        Padding(
                          padding:EdgeInsets.fromLTRB(6.w, 1.h, 1.h, 0),
                          child: Row(
                            children: [
                              Image.asset(ImageAssets.addImagesPath,fit: BoxFit.fill,),
                              SizedBox(
                                width: 3.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    textAlign: TextAlign.start,
                                    name: AppString.appBuy,
                                    fontSize: 20.sp,
                                    color: AppColor.colorWhiteText,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2.w),
                                    child: CustomText(
                                      textAlign: TextAlign.start,
                                      name: AppString.appBuyBtc,
                                      fontSize: 10.sp,
                                      color: AppColor.colorWhiteText,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(6.w, 1.h, 1.h, 0),
                          child: Row(
                            children: [
                              Image.asset(ImageAssets.loadImagesPath),
                              SizedBox(
                                width: 5.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    textAlign: TextAlign.start,
                                    name: AppString.appDeposit,
                                    fontSize: 20.sp,
                                    color: AppColor.colorWhiteText,
                                  ),
                                  CustomText(
                                    textAlign: TextAlign.start,
                                    name: AppString.btcDepositNotes,
                                    fontSize: 10.sp,
                                    color: AppColor.colorWhiteText,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 8.h,
              decoration: const BoxDecoration(
                  color: AppColor.colorToggleColor, shape: BoxShape.circle),
              child: Image.asset(ImageAssets.tradeArrowImagePath),
            ),
          ),
        )
      ],
    );
  }
}
