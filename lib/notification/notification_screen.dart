import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/components/pagination_list_view.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/layout/default_layout.dart';
import 'package:podo_darae_lab/common/provider/room_id_provider.dart';
import 'package:podo_darae_lab/common/route/router.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/notification/provider/notification_provider.dart';

class NotificationScreen extends ConsumerWidget {
  static String get routeName => 'notification';
  const NotificationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roomId = ref.watch(roomIdProvider);
    return DefaultLayout(
      showAppbar: true,
      title: Text(
        '알림',
        style: TextStyle(
          fontSize: 22.sp,
        ),
      ),
      leadingIcon: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: PRIMARY_COLOR,
          ),
          onPressed: () {
            ref.read(routerProvider).pop();
          }),
      child: Consumer(
        builder: (context, ref, child) {
          return PaginationListView(
              provider: notificationProvider(roomId),
              itembuilder: <NotificationModel>(_, index, model) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: BORDER_SECOND_COLOR),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                        'assets/img/notify/${DataUtillities.getNotiImg(model.notiType)}.png'),
                    title: Text(model.title),
                    subtitle: Text(model.message),
                  ),
                );
              });
        },
      ),
    );
  }
}
