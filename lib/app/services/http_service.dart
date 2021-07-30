
import 'package:dio/dio.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:getx_test/utility/enum/env.dart';
import 'package:getx_test/utility/http/ServerError.dart';
import 'package:getx_test/utility/log/Log.dart';
import 'package:getx_test/utility/log/dio_logger.dart';
import 'package:logging/logging.dart';

part 'http_service_impl.dart';

abstract class HttpService{
  static const String TAG = 'HttpService';

  factory HttpService() = HttpServiceImpl;

  Future<Response> getNews();
}