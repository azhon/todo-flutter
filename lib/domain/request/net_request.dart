/// createTime: 2021/10/15 on 13:40
/// desc:
///
/// @author azhon

import 'package:flutter_basic_lib/flutter_basic_lib.dart';
import 'package:todo_flutter/common/api/api_provider.dart';
import 'package:todo_flutter/domain/request/model/get_model.dart';

class NetGetRequest extends ApiRequest<GetModel> {
  NetGetRequest() : super({'id': '323', 'name': 'azhon'});

  @override
  RequestMethod get method => RequestMethod.GET;

  @override
  String get url => 'banner/json';

  @override
  BaseResultBean get resultInstance => GetModel();
}

class NetPostRequest extends ApiRequest {
  NetPostRequest() : super({'id': '323', 'name': 'azhon'});

  @override
  RequestMethod get method => RequestMethod.POST;

  @override
  String get url => 'lg/uncollect_originId/2333/json';

  @override
  BaseResultBean? get resultInstance => null;
}
