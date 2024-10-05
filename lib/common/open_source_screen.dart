import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/layout/default_layout.dart';
import 'package:podo_darae_lab/common/model/Package.dart';
import 'package:podo_darae_lab/common/open_source_item.dart';
import 'package:podo_darae_lab/common/route/router.dart';
import 'package:podo_darae_lab/common/utilities/open_source_util.dart';

class OpenSourceScreen extends ConsumerStatefulWidget {
  static String get routeName => 'open_source';
  const OpenSourceScreen({super.key});

  @override
  ConsumerState<OpenSourceScreen> createState() => _OpenSourceScreenState();
}

class _OpenSourceScreenState extends ConsumerState<OpenSourceScreen> {
  List<Package> packages = [];

  void initData() async {
    final string = await rootBundle.loadString('assets/json/licenses.json');
    final json = await jsonDecode(string);

    if (json is List) {
      setState(() {
        packages =
            json.map<Package>((e) => OpenSourceUtil.tryConverting(e)).toList();
      });
    }
  }

  @override
  void initState() {
    initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: const Text(
        '오픈소스 라이센스',
      ),
      appbarColor: Colors.white,
      showAppbar: true,
      leadingIcon: IconButton(
        onPressed: () {
          ref.read(routerProvider).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: PRIMARY_SECOND_COLOR,
        ),
      ),
      child: ListView.separated(
          itemCount: packages.length,
          itemBuilder: (context, index) {
            return OpenSourceItem(item: packages[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 8.h,
              child: const Divider(),
            );
          }),
    );
  }
}
