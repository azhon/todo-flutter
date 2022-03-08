/*
 * 项目名:    todo_flutter
 * 包名       
 * 文件名:    api_convert
 * 创建时间:  2021/10/15 on 14:31
 * 描述:     
 *
 * @author   阿钟
 */
import 'dart:io';

import 'package:flutter_basic_lib/flutter_basic_lib.dart';

class ApiConvert extends BaseConvert {
  @override
  BaseBean<T> convert<T>(Result result, BaseResultBean? resultBean) {
    if (result.statusCode == HttpStatus.ok) {
      /// 根据自身业务返回的数据结果进行解析
      var body = result.data;
      var data = body['data'];

      ///json转模型
      resultBean?.fromJson(data);
      return BaseBean(
          code: body['errorCode'],
          message: body['errorMsg'],
          data: resultBean == null ? data : resultBean as T);
    } else {
      ///网络请求 code != HttpStatus.ok
      return BaseBean(
          code: result.statusCode ?? BaseBean.DEFAULT_CODE,
          message: result.statusMessage);
    }
  }
}
