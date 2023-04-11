import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:screen_f/utils/app_colors.dart';
import 'package:screen_f/utils/app_string.dart';
import 'package:screen_f/utils/custom_text.dart';
import 'package:sizer/sizer.dart';

class SliderButton extends StatelessWidget {
  final dynamic Function(ActionSliderController)? action;
  final String? name;
  final double? fontSize;

  const SliderButton({Key? key, this.action, this.name, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.w, right: 6.w),
      child: ActionSlider.standard(
        backgroundColor: AppColor.colorSliderColor,
        icon: const Icon(
          Icons.arrow_forward_ios,
        ),
        toggleColor: AppColor.colorToggleColor,
        direction: TextDirection.ltr,
        reverseSlideAnimationCurve: Curves.easeInOut,
        action: action ??
            (controller) {
              controller.success();
            },
        child: Row(
          children: [
            CustomText(
              name: name ?? AppString.appLetsStart,
              color: AppColor.colorWhiteText,
              fontSize: fontSize ?? 10.sp,
            ),
            Icon(Icons.arrow_forward_ios,
                color: AppColor.colorWhiteText.withOpacity(0.4)),
            Icon(Icons.arrow_forward_ios,
                color: AppColor.colorWhiteText.withOpacity(0.7)),
            const Icon(Icons.arrow_forward_ios, color: AppColor.colorWhiteText)
          ],
        ),
      ),
    );
  }
}
