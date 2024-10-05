import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    super.key,
    required this.child,
    this.backgroundColor,
    this.title,
    this.leadingIcon,
    this.actionIcons,
    this.appbarColor,
    this.endDrawer,
    this.leadingWidth,
    this.showAppbar = true,
  });
  final Widget child;
  final Color? backgroundColor;
  final Widget? title;
  final Widget? leadingIcon;
  final List<Widget>? actionIcons;
  final Color? appbarColor;
  final Widget? endDrawer;
  final double? leadingWidth;
  final bool showAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppbar ? renderAppBar() : null,
      body: child,
      backgroundColor: backgroundColor ?? Colors.white,
      endDrawer: endDrawer,
      resizeToAvoidBottomInset: true,
    );
  }

  AppBar renderAppBar() {
    return AppBar(
      backgroundColor: appbarColor ?? Colors.white,
      elevation: 0,
      leadingWidth: leadingWidth ?? 56.0,
      title: title,
      titleTextStyle: TextStyle(
        fontSize: 24.sp,
        color: Colors.black,
      ),
      leading: leadingIcon,
      actions: actionIcons,
    );
  }
}
