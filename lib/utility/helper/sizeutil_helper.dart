
import 'package:sizer/sizer.dart';

class SizeUtilHelper {
  static double get textFormFieldIconSize =>
      SizerUtil.deviceType == DeviceType.mobile ? 5.w : 3.5.w;


  static double get itemBorderRadius =>
      SizerUtil.deviceType == DeviceType.mobile ? 2.w : 1.5.w;

  static double get imgSmallSize =>
      SizerUtil.deviceType == DeviceType.mobile ? 7.w : 6.w;

  static double get imgMedSize =>
      SizerUtil.deviceType == DeviceType.mobile ? 10.w : 8.5.w;

  static double get imgLargeSize =>
      SizerUtil.deviceType == DeviceType.mobile ? 15.w : 12.w;

  static double get bottomSheetHeight =>
      SizerUtil.deviceType == DeviceType.mobile ? 92.h : 92.h;

  static double get bottomSheetBorderRadius =>
      SizerUtil.deviceType == DeviceType.mobile ? 5.w : 4.w;

  static double get buttonWidth =>
      SizerUtil.deviceType == DeviceType.mobile ? 25.w : 22.w;

  static double get switchWidth =>
      SizerUtil.deviceType == DeviceType.mobile ? 13.5.w : 10.w;

  static double get patrolMarkerSize =>
      SizerUtil.deviceType == DeviceType.mobile ? 20.w : 5.w;
}
