import 'package:aditya_gaur_portfolio_flutter/features/home/presentation/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:aditya_gaur_portfolio_flutter/core/utils/constants/text_strings.dart';
import 'package:aditya_gaur_portfolio_flutter/core/utils/theme/theme.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  // await HiveStorage.initHiveStorage();
  // await EasyLocalization.ensureInitialized();
  // runApp(
  //   EasyLocalization(
  //     supportedLocales: const [Locale('en')],
  //     path: 'assets/translations',
  //     fallbackLocale: const Locale('en'),
  //     assetLoader: const CodegenLoader(),
  //     child: const MyApp(),
  //   ),
  // );
  runApp(const App());
}

//....................................APP Router  ................................

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        title: TTexts.appName,
        themeMode: ThemeMode.dark,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        home: const HomePage(),
      ),
    );
  }
}
