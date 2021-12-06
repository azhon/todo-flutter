/*
 * 项目名:    todo_flutter
 * 包名       
 * 文件名:    load_event
 * 创建时间:  2021/10/21 on 14:56
 * 描述:     
 *
 * @author   阿钟
 */
import 'package:flutter_basic_lib/base/bloc/base_event.dart';
import 'package:flutter_basic_lib/bloc/load/load_bloc.dart';
import 'package:flutter_basic_lib/bloc/load/load_state.dart';
import 'package:flutter_basic_lib/error/api_exception.dart';

abstract class LoadEvent extends BaseEvent<LoadBloc, LoadState> {}

class InitialEvent extends LoadEvent {
  @override
  Future<LoadState> on(LoadBloc bloc, LoadState currentState) async {
    return InitialState();
  }
}

class LoadingEvent extends LoadEvent {
  @override
  Future<LoadState> on(LoadBloc bloc, LoadState currentState) async {
    return LoadingState();
  }
}

class ErrorEvent extends LoadEvent {
  final ApiException exception;

  ErrorEvent(this.exception);

  @override
  Future<LoadState> on(LoadBloc bloc, LoadState currentState) async {
    return ErrorState(exception);
  }
}