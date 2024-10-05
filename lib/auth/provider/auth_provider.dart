// 선언된 AuthProvider를 사용하기 위한 변수
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:podo_darae_lab/common/login_screen.dart';
import 'package:podo_darae_lab/auth/model/user_model.dart';
import 'package:podo_darae_lab/auth/provider/user_me_provider.dart';
import 'package:podo_darae_lab/common/open_source_screen.dart';
import 'package:podo_darae_lab/common/splash_screen.dart';
import 'package:podo_darae_lab/home/home_screen.dart';
import 'package:podo_darae_lab/notification/notification_screen.dart';
import 'package:podo_darae_lab/setting/setting_screen.dart';

final authProvider =
    ChangeNotifierProvider<AuthProvider>((ref) => AuthProvider(ref: ref));
// ChangeNotifier로 선언한다.

class AuthProvider extends ChangeNotifier {
  final Ref ref;
  AuthProvider({
    required this.ref,
  }) {
    ref.listen(userMeProvider, (previous, next) {
      if (previous != next) {
        notifyListeners();
      }
    });
  }
  // screen의 경로를 설정한다.
  List<GoRoute> get routes => [
        GoRoute(
          path: '/',
          name: HomeScreen.routeName,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const HomeScreen(),
            key: state.pageKey,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          path: '/login',
          name: LoginScreen.routeName,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const LoginScreen(),
            key: state.pageKey,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          path: '/splash',
          name: SplashScreen.routeName,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SplashScreen(),
            key: state.pageKey,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          path: '/notify',
          name: NotificationScreen.routeName,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const NotificationScreen(),
            key: state.pageKey,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          path: '/setting',
          name: SettingScreen.routeName,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const SettingScreen(),
            key: state.pageKey,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ),
        GoRoute(
          path: '/open_source',
          name: OpenSourceScreen.routeName,
          pageBuilder: (context, state) => CustomTransitionPage(
            child: const OpenSourceScreen(),
            key: state.pageKey,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        ),
      ];

  // userMeProvider의 logout로직을 실행한다.
  void logout() {
    ref.read(userMeProvider.notifier).logout();
  }

  /// 앱을 처음 실행하였을 때
  /// 토큰이 존재하는지 확인 후
  /// 로그인 스크린으로 갈지
  /// 메인 스크린으로 갈지
  /// 확인하는 과정
  String? redirectLogic(BuildContext context, GoRouterState state) {
    final UserModelBase? user = ref.read(userMeProvider);

    final loginIn = state.uri.toString() == '/login';

    /// 유저 정보가 없는데
    /// 로그인 중이면 그대로 로그인 스크린에 두고
    /// 만약 로그인 중이 아니라면 로그인 스크린으로 이동
    if (user == null) {
      return loginIn ? null : '/login';
    }

    /// 사용자 정보가 있는 상태면
    /// 로그인 중이거나 현재 위치가 스플래시 스크린이면
    /// 메인 스크린으로 이동
    if (user is UserModel) {
      return loginIn || state.uri.toString() == '/splash' ? '/' : null;
    }

    if (user is UserModelError) {
      return !loginIn ? '/login' : null;
    }

    return null;
  }
}
