import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/model/Package.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OpenSourceItem extends StatelessWidget {
  const OpenSourceItem({
    super.key,
    required this.item,
  });

  final Package item;

  void _launchURL(String url) async {
    try {
      await launchUrlString(url);
    } catch (e) {
      print(e);
      DataUtillities.toast(message: 'URL을 열 수 없습니다.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Text(
              item.name,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Text(item.description),
          ),
          if (item.authors.isNotEmpty)
            Container(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Text('authors: ${item.authors.join(', ')}'),
            ),
          if (item.homepage != null)
            Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: InkWell(
                onTap: () {
                  _launchURL(item.homepage!);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("URL: "),
                    Flexible(
                      child: Text(
                        item.homepage ?? '',
                        style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (item.repository != null)
            Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: InkWell(
                onTap: () {
                  _launchURL(item.repository!);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Repository: "),
                    Flexible(
                      child: Text(
                        item.repository ?? '',
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 200,
            child: SingleChildScrollView(
              child: Text(item.license ?? ''),
            ),
          ),
        ],
      ),
    );
  }
}
