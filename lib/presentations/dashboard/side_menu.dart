import 'package:asp_web/core/utiils_lib/extensions.dart';
import 'package:flutter/material.dart';

import 'package:sidebarx/sidebarx.dart';

class SideBarXExample extends StatelessWidget {
  const SideBarXExample({Key? key, required SidebarXController controller})
      : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        decoration: BoxDecoration(
          color: context.appColor.greyColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        iconTheme: IconThemeData(
          color: context.appColor.whiteColor,
        ),
        selectedIconTheme: IconThemeData(color: context.appColor.blackColor),
        padding: EdgeInsets.all(10),
        textStyle:
            context.bodyTxtStyle.copyWith(color: context.appColor.whiteColor),
        selectedTextStyle: context.bodyTxtStyle.copyWith(
          color: context.appColor.blackColor,
        ),
      ),
      extendedTheme: SidebarXTheme(width: 250),
      footerDivider: Divider(
        color: context.appColor.redColor,
        height: 1,
      ),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Icon(
            Icons.person,
            size: 60,
            color: context.appColor.whiteColor,
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Add Video',
        ),
        SidebarXItem(
          icon: Icons.video_camera_back_outlined,
          label: 'Add BSP Video',
        ),
        SidebarXItem(
          icon: Icons.image,
          label: 'Add BABA SAHAB Video',
        ),
        SidebarXItem(
          icon: Icons.history,
          label: 'Add CONGRESS Video',
        ),
      ],
    );
  }
}
