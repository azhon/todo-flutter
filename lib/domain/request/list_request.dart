/// createTime: 2022/07/27 on 10:14
/// desc:
///
/// @author azhon

import 'package:flutter_basic_lib/flutter_basic_lib.dart';
import 'package:todo_flutter/common/api/api_provider.dart';
import 'package:todo_flutter/domain/request/model/list_data_model.dart';

class ListRequest extends ApiRequest<BaseListResultBean> {
  ListRequest() : super(null);

  @override
  RequestMethod get method => RequestMethod.GET;

  @override
  String get url => 'article/list/0/json';

  @override
  BaseResultBean? get resultInstance => ListDataModel();
}
