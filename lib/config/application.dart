import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/app/core/routes/app_pages.dart';
import 'package:getx_test/app/theme/app_theme.dart';
import 'package:getx_test/translations/app_translations.dart';




class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: AppTranslation.translations, // your translations
      locale: Locale('en', 'US'), // translations will be displayed in that locale
      fallbackLocale: Locale('en', 'UK'), //
      title: "Flutter",
      theme: appThemeData,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }



}
