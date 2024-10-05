import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/device/device_manager.dart';
import 'package:podo_darae_lab/common/fcm/fcm_manager.dart';
import 'package:podo_darae_lab/common/route/router.dart';

class App extends ConsumerStatefulWidget {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> with WidgetsBindingObserver {
  bool _isInBackground = false;

  @override
  void initState() {
    super.initState();
    FcmManager.requestPermission();
    FcmManager.initialize(ref);
    DeviceManager.initialize();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 라우터를 watch하는 변수
    final router = ref.watch(routerProvider);

    // materialApp에서 router를 사용하기위하여 MaterialApp.router로 바꾼다.
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) => MaterialApp.router(
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        ),
        theme: ThemeData(
          fontFamily: 'Pretendard',
          useMaterial3: false,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: router, // 사용할 router
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
        break;
      case AppLifecycleState.paused:
        // 소켓 일시정지
        _isInBackground = true;
        break;
      case AppLifecycleState.resumed:
        // 소켓 재연결
        if (_isInBackground) {
          // 재연결 로직 구성
          _isInBackground = false;
        }

        break;
    }

    super.didChangeAppLifecycleState(state);
  }
}
