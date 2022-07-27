/// createTime: 2021/9/29 on 17:10
/// desc:
///
/// @author azhon

import 'dart:math';

import 'package:flutter_basic_lib/bloc/data/data_change_bloc.dart';
import 'package:flutter_basic_lib/flutter_basic_lib.dart';
import 'package:todo_flutter/domain/bloc/bloc/test_event.dart';
import 'package:todo_flutter/domain/bloc/bloc/test_state.dart';

class TestBloc extends BaseBloc<TestEvent, TestState> {
  DataChangeBloc<int> dataChangeBloc = DataChangeBloc(0);

  TestBloc() : super(TestInitialState(null));

  init() {
    add(InitEvent());
  }

  changeData() async {
    int random = Random().nextInt(9999);
    dataChangeBloc.changeData(random);
  }
}
