import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/auth/provider/secure_storage_provider.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/layout/default_layout.dart';
import 'package:podo_darae_lab/common/route/router.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/components/drawer.dart';
import 'package:podo_darae_lab/home/components/main_header.dart';
import 'package:podo_darae_lab/home/components/temp_custom_list_view_builder.dart';
import 'package:podo_darae_lab/home/provider/gateway_provider.dart';
import 'package:podo_darae_lab/notification/notification_screen.dart';
import 'package:podo_darae_lab/setting/provider/setting_provider.dart';
import 'package:podo_darae_lab/setting/setting_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static String get routeName => 'home';
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final gateway = ref.watch(gatewayProvider);

    if (gateway != null) {
      return DefaultLayout(
        endDrawer: const MenuDrawer(),
        leadingWidth: 140.w,
        leadingIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Image.asset(
            'assets/img/login/logo.png',
          ),
        ),
        actionIcons: [
          IconButton(
            onPressed: () async {
              ref.read(routerProvider).pushNamed(NotificationScreen.routeName);
            },
            color: PRIMARY_SECOND_COLOR,
            icon: const Icon(Icons.notifications_rounded),
          ),
          IconButton(
            onPressed: () async {
              final roomId =
                  await ref.read(secureStorageProvider).read(key: ROOM_ID);
              if (roomId == null) {
                DataUtillities.toast(message: '게이트웨이 아이디를 확인해주세요');
                throw Exception();
              }
              await ref
                  .read(settingProvider.notifier)
                  .getSettingValue(roomId: roomId);

              ref.read(routerProvider).pushNamed(SettingScreen.routeName);
            },
            color: PRIMARY_SECOND_COLOR,
            icon: const Icon(Icons.settings),
          ),
          Builder(builder: (context) {
            return IconButton(
              onPressed: () async {
                Scaffold.of(context).openEndDrawer();
              },
              color: PRIMARY_SECOND_COLOR,
              icon: const Icon(Icons.menu_rounded),
            );
          }),
        ],
        // child: provider is RealTimeDataListModel
        //     ? ListView(
        //         shrinkWrap: true,
        //         physics: const BouncingScrollPhysics(),
        //         children: [
        //           MainHeader(farmName: gateway.name),
        //           // const CustomListViewBuilder(),
        //           const TempCustomListViewBuilder(),
        //         ],
        //       )
        //     : const Center(
        //         child: CircularProgressIndicator.adaptive(),
        //       ),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            MainHeader(farmName: gateway.name),
            const TempCustomListViewBuilder(),
          ],
        ),
      );
    }
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
