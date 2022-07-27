/// createTime: 2021/10/15 on 11:55
/// desc:
///
/// @author azhon

import 'package:flutter_basic_lib/flutter_basic_lib.dart';
import 'package:todo_flutter/domain/bloc/net/net_bloc.dart';
import 'package:todo_flutter/domain/bloc/net/net_state.dart';
import 'package:todo_flutter/domain/request/model/get_model.dart';
import 'package:todo_flutter/domain/request/net_request.dart';

abstract class NetEvent extends BaseEvent<NetBloc, NetState> {}

class GetEvent extends NetEvent {
  @override
  Future<NetState> on(NetBloc bloc, NetState currentState) async {
    bloc.showPageLoading();
    var bean = await NetGetRequest().request();
    await Future.delayed(Duration(seconds: 1));
    bloc.dismissPageLoading();
    bloc.loadDone();
    return NetInitialState(bean.data);
  }
}

class PostEvent extends NetEvent {
  @override
  Future<NetState> on(NetBloc bloc, NetState currentState) async {
    bloc.loading();
    var bean = await NetPostRequest().request();
    await Future.delayed(Duration(seconds: 1));
    bloc.loadError(bean);
    return NetInitialState(GetModel());
  }
}
