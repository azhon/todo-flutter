/*
 * 项目名:    todo_flutter
 * 包名       
 * 文件名:    net_state
 * 创建时间:  2021/10/15 on 11:55
 * 描述:     
 *
 * @author   阿钟
 */

import 'package:todo_flutter/domain/request/model/get_model.dart';

abstract class NetState {
  final GetModel? data;

  NetState(this.data);
}

class NetInitialState extends NetState {
  NetInitialState(GetModel? data) : super(data);
}
