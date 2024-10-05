// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/auth/model/user_model.dart';
import 'package:podo_darae_lab/auth/provider/user_me_provider.dart';
import 'package:podo_darae_lab/common/components/custom_text_form_field.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/layout/default_layout.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static String get routeName => 'login';
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final usernameTextcontroller = TextEditingController();
  final passwordTextcontroller = TextEditingController();

  final ValueNotifier<bool> _autoLogin = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userMeProvider);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: DefaultLayout(
        backgroundColor: PRIMARY_COLOR,
        showAppbar: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: SafeArea(
            top: true,
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24.w,
                    ),
                    Image.asset(
                      'assets/img/login/logo_app.png',
                      height: 180.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomTextFormField(
                  controller: usernameTextcontroller,
                  onChanged: (value) {
                    usernameTextcontroller.text = value;
                  },
                  prefixIcon: Container(
                    margin: EdgeInsets.all(10.w),
                    child: Image.asset('assets/img/login/ic_id.png'),
                  ),
                  hintText: '이메일을 입력해주세요',
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTextFormField(
                  controller: passwordTextcontroller,
                  onChanged: (value) {
                    passwordTextcontroller.text = value;
                  },
                  prefixIcon: Container(
                    margin: EdgeInsets.all(10.w),
                    child: Image.asset('assets/img/login/ic_pw.png'),
                  ),
                  hintText: '비밀번호를 입력해주세요',
                  obscureText: true,
                ),
                SizedBox(
                  height: 16.h,
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: _autoLogin,
                  builder: (context, value, child) => GestureDetector(
                    onTap: () {
                      _autoLogin.value = !_autoLogin.value;
                    },
                    child: Row(
                      children: [
                        Checkbox(
                            visualDensity: const VisualDensity(
                              horizontal: -4,
                              vertical: -4,
                            ),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            fillColor:
                                const MaterialStatePropertyAll(TEXT_BOX_COLOR),
                            overlayColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                            focusColor: Colors.transparent,
                            value: _autoLogin.value,
                            onChanged: (value) {
                              _autoLogin.value = !_autoLogin.value;
                            }),
                        Text(
                          '로그인 유지',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ElevatedButton(
                  onPressed: state is UserModelLoading
                      ? null
                      : () async {
                          String username = usernameTextcontroller.text;
                          String password = passwordTextcontroller.text;
                          // log('username: $username, password: $password, autoLogin: ${_autoLogin.value}');
                          ref.read(userMeProvider.notifier).login(
                                username: username,
                                password: password,
                                autoLogin: _autoLogin.value,
                              );
                        },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    visualDensity:
                        const VisualDensity(horizontal: -4, vertical: -4),
                    elevation: 0,
                    backgroundColor: PRIMARY_SECOND_COLOR,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size(double.maxFinite, 45.h),
                  ),
                  child: state is UserModelLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(
                          '로그인',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Image.asset(
                  'assets/img/login/logo_bottom.png',
                  height: 35.h,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  'Copyright 2023. PODO inc. & Project H All rights reserved.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                    fontWeight: FontWeight.w400,
                    fontSize: 10.5.sp,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
