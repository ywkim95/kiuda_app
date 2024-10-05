import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/auth/model/user_model.dart';
import 'package:podo_darae_lab/auth/provider/user_me_provider.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/provider/gateway_provider.dart';

class ChangeFarmModalBottomSheet extends ConsumerStatefulWidget {
  const ChangeFarmModalBottomSheet({super.key});

  @override
  ConsumerState<ChangeFarmModalBottomSheet> createState() =>
      _ChangeFarmModalBottomSheetState();
}

class _ChangeFarmModalBottomSheetState
    extends ConsumerState<ChangeFarmModalBottomSheet> {
  late List<Map<String, dynamic>> isSelected;
  @override
  void initState() {
    final user = ref.read(userMeProvider);
    if (user is UserModel) {
      isSelected =
          user.gateways.map((e) => {'selected': false, 'gateway': e}).toList();
    } else {
      isSelected = [];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.read(userMeProvider);

    if (user is! UserModel) {
      return const SafeArea(child: Text('에러가 발생하였습니다. 확인바랍니다.'));
    }
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Wrap(
          children: [
            Card(
              margin: EdgeInsets.only(
                top: 8.h,
                left: 4.h,
                right: 4.h,
                bottom: 12.h,
              ),
              color: Colors.transparent,
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '농장선택',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  InkWell(
                    onTap: () async => await Navigator.of(context).maybePop(),
                    child: const Icon(
                      Icons.close_rounded,
                    ),
                  )
                ],
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: user.gateways.length,
              itemBuilder: (context, index) {
                final gateway = user.gateways[index];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: isSelected[index]['selected']
                          ? PRIMARY_COLOR
                          : Colors.transparent,
                    ),
                  ),
                  leading: Image.asset(
                    'assets/img/common/grape.png',
                    width: 40.w,
                    height: 40.w,
                  ),
                  title: Text(
                    '${gateway.name} 농장',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                  trailing: isSelected[index]['selected']
                      ? const Icon(
                          Icons.check,
                          color: PRIMARY_COLOR,
                        )
                      : null,
                  onTap: () {
                    setState(() {
                      isSelected[index]['selected'] =
                          !isSelected[index]['selected'];
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.h),
              width: double.maxFinite,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: PRIMARY_COLOR,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: () async {
                  /// 결국 농장선택은 게이트웨이를 선택하는것이고
                  /// 농장변경리스트에서 하나를 선택하면 해당하는 게이트웨이가 선택되는것이고
                  /// 변경을 하게되면 기존 게이트웨이 값을 선택된 게이트웨이 값으로 변경해야된다.
                  try {
                    Map<String, dynamic>? selectedGateway =
                        isSelected.firstWhere((e) => e['selected'] == true);

                    final gateway = ref.read(gatewayProvider);
                    if (gateway == selectedGateway['gateway']) {
                      DataUtillities.toast(message: '현재 선택된 농장입니다.');
                      return;
                    }
                    Navigator.of(context).pop();
                  } catch (e) {
                    DataUtillities.toast(message: '농장 선택후 버튼을 눌러주세요.');
                    // log('$e');
                  }
                },
                child: Text(
                  '선택',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
