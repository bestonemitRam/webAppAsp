import 'package:asp_web/core/utiils_lib/extensions.dart';
import 'package:asp_web/core/utiils_lib/string/app_string.dart';
import 'package:asp_web/presentations/widgets/custom_text_field.dart';
import 'package:asp_web/presentations/widgets/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScree extends StatefulWidget {
  const HomeScree({super.key});

  @override
  State<HomeScree> createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScree>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(100.0),
      child: Card(
        color: context.appColor.greyColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter Title',
                  style: context.subTitleTextStyle.copyWith(fontSize: 15.sp),
                ),
                CustomTextField(
                  keyBoardType: TextInputType.multiline,
                  hintText: "Enter You title",
                  fillColor: Colors.transparent,
                ),
                Gap(5.h),
                Text(
                  'Enter Description',
                  style: context.subTitleTextStyle.copyWith(fontSize: 15.sp),
                ),
                CustomTextField(
                  keyBoardType: TextInputType.multiline,
                  hintText: "Enter your description ",
                  fillColor: Colors.transparent,
                ),
                Gap(5.h),
                Text(
                  'Enter Description',
                  style: context.subTitleTextStyle.copyWith(fontSize: 15.sp),
                ),
                CustomTextField(
                  keyBoardType: TextInputType.multiline,
                  hintText: "Enter your Video URL ",
                  fillColor: Colors.transparent,
                ),
                Gap(2.h),
                Container(
                  height: 15.h,
                  width: MediaQuery.of(context).size.width / 4,
                  color: context.appColor.greyColor500,
                ),
                Gap(2.h),
                SizedBox(
                  width: double.infinity,
                  child: ButtonElevated(
                    backgroundColor: context.appColor.greyColor100,
                    text: "Submit",
                    textColor: context.appColor.blackColor,
                    onPressed: () {
                      //context.push(MyRoutes.OTPSCREEN);
                      // Change page
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
