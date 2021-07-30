import 'package:get/get.dart';

import 'de_DE/de_translations.dart';
import 'en_US/en_translations.dart';



abstract class AppTranslation {
  static Map<String, Map<String, String>>
  translations =
  {
    'en_US' : enUs,
    'de_DE' : deDE
  };

}
