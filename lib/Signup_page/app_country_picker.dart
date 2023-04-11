import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

class CountryPicker extends StatelessWidget {
  const CountryPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CountryListPick(
      pickerBuilder: (context, countryCode) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Container(
              height: 6.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.h),
                color: AppColor.colorBlackGradiant,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 3.w,
                  ),
                  Image.asset(
                    countryCode?.flagUri ?? "",
                    package: 'country_list_pick',
                    height: 5.h,
                    width: 10.w,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    height: 5.h,
                    width: 0.3.w,
                    color: AppColor.colorWhiteText,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                          color: AppColor.colorBlackGradiant),
                      child: const TextField(
                          // decoration: InputDecoration(border: InputBorder.none),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                    ),
                    child: const Icon(Icons.arrow_drop_down_outlined,
                        color: AppColor.colorWhiteText),
                  )
                ],
              )),
        );
      },
      theme: CountryTheme(
        isShowFlag: true,
        isShowTitle: true,
        isShowCode: true,
        isDownIcon: true,
        showEnglishName: false,
        // labelColor: Colors.blueAccent,
      ),
      initialSelection: '+91',
      onChanged: (CountryCode) {
        // print(code.name);
        // print(code.code);
        // print(code.dialCode);
        // print(code.flagUri);
      },
      useUiOverlay: true,
      useSafeArea: false,
    );
  }
}
