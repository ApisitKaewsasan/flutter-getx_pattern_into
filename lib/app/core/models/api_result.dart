
import 'package:getx_test/app/core/models/throw_if_no_success.dart';

class ApiResult{
  Object? respone;
  ThrowIfNoSuccess? httpCallBack;

  ApiResult({ this.respone,  this.httpCallBack});
}