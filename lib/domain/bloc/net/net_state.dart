/// createTime: 2021/10/15 on 11:55
/// desc:
///
/// @author azhon

import 'package:todo_flutter/domain/request/model/get_model.dart';

abstract class NetState {
  final GetModel? data;

  NetState(this.data);
}

class NetInitialState extends NetState {
  NetInitialState(GetModel? data) : super(data);
}
