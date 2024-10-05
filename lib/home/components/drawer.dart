import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/auth/model/user_model.dart';
import 'package:podo_darae_lab/auth/provider/user_me_provider.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/open_source_screen.dart';
import 'package:podo_darae_lab/common/route/router.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/provider/gateway_provider.dart';
import 'package:url_launcher/url_launcher.dart';

/// RealTimeDataScreen의 우측상단의 메뉴를 클릭 시 구현
/// ChangeFarmsCard와 마찬가지로 농장리스트가 없어 구현을 할 수 없음
/// 현재[23/09/21]는 임시로 구현해놓음
/// 농장리스트를 받아올 때 구현 예정
class MenuDrawer extends ConsumerWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userMeProvider);
    if (user is! UserModel) {
      return const Drawer(
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return Drawer(
      backgroundColor: Colors.white,
      width: 280.w,
      child: SafeArea(
        child: Column(
          children: [
            header(context, user),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 24.h,
                ),
                width: double.maxFinite,
                color: BODY_SECOND_COLOR,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    farmList(user, ref),
                    serviceInfo(ref),
                    SizedBox(
                      height: 8.h,
                    ),
                    openSourceBtn(ref),
                    SizedBox(
                      height: 8.h,
                    ),
                    logoutBtn(context, ref),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container header(BuildContext context, UserModel user) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 14.h,
      ),
      height: 140.h,
      child: Column(
        children: [
          Card(
            color: Colors.transparent,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '내정보',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Utils.toast(message: '선택되었습니다.');
                    Scaffold.of(context).closeEndDrawer();
                  },
                  child: const Icon(
                    Icons.close_rounded,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Card(
            elevation: 0,
            color: Colors.transparent,
            child: Row(
              children: [
                Image.asset(
                  'assets/img/common/ic_user.png',
                  width: 55.w,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  '${user.name} 님',
                  style: TextStyle(fontSize: 22.sp),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded farmList(UserModel user, WidgetRef ref) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: user.gateways.length,
        separatorBuilder: (context, index) {
          return const Divider(
            color: BORDER_COLOR,
          );
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              // DataUtillities.toast(message: '선택되었습니다.');
              final gateway = ref.read(gatewayProvider);
              if (gateway!.id == user.gateways[index].id) {
                DataUtillities.toast(message: '현재 선택된 농장입니다.');
                return;
              } else {
                Scaffold.of(context).closeEndDrawer();
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
              // decoration: const BoxDecoration(
              //   border: Border(
              //     bottom: BorderSide(
              //       color: BORDER_COLOR,
              //     ),
              //   ),
              // ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Image.asset(
                      'assets/img/farms/ic_1.png',
                      width: 30.w,
                    ),
                  ),
                  Text(
                    '${user.gateways[index].name} 농장',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: CIRCLE_COLOR,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget openSourceBtn(WidgetRef ref) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      onPressed: () {
        ref.read(routerProvider).pushNamed(OpenSourceScreen.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.info_rounded,
            color: const Color(0xFFCCCCCC),
            size: 25.w,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            '오픈소스 라이센스',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox logoutBtn(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.maxFinite,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 14.h),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        onPressed: () async {
          final logout = await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('로그아웃'),
              content: const Text('로그아웃 하시겠습니까?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('예'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('아니오'),
                ),
              ],
            ),
          );
          if (logout == true) {
            await ref.read(userMeProvider.notifier).logout();
            // ref.read(realTimeDataProvider.notifier).stopTimer();
            // ref.read(weatherProvider.notifier).stopTimer();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.power_settings_new_rounded,
              color: const Color(0xFFCCCCCC),
              size: 25.w,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              '로그아웃',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF666666),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container serviceInfo(WidgetRef ref) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: const Color(0xffdce2f0),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '서비스기간',
            style: TextStyle(
              color: const Color(0xff69717c),
              fontSize: 12.sp,
            ),
            // textAlign: TextAlign.start,
          ),
          Text(
            '2023. 03. 01 ~ 2024. 03. 01',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '연락처',
            style: TextStyle(
              color: const Color(0xff69717c),
              fontSize: 12.sp,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              visualDensity: const VisualDensity(
                vertical: -4,
                horizontal: -4,
              ),
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () async {
              final Uri uri = Uri.parse('tel:\\031-759-1488');
              await launchUrl(uri);
              // await launchUrl(uri);
            },
            child: Text(
              '센서) 031-759-1488',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              visualDensity: const VisualDensity(
                vertical: -4,
                horizontal: -4,
              ),
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () async {
              Uri uri = Uri.parse("tel:\\031-759-1488");
              await launchUrl(uri);
            },
            child: Text(
              '프로그램) 031-759-1488',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '도움말',
            style: TextStyle(
              color: const Color(0xff69717c),
              fontSize: 12.sp,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              visualDensity: const VisualDensity(
                vertical: -4,
                horizontal: -4,
              ),
              padding: EdgeInsets.zero,
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () async {
              Uri uri = Uri.https("www.kiuda.co.kr");
              await launchUrl(uri);
            },
            child: Text(
              'www.kiuda.co.kr',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            '버전정보',
            style: TextStyle(
              color: const Color(0xff69717c),
              fontSize: 12.sp,
            ),
          ),
          Text(
            'ver. 1.0',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
