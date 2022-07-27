/// createTime: 2022/7/27 on 11:50
/// desc:
///
/// @author azhon

import 'package:flutter/material.dart';
import 'package:flutter_basic_lib/flutter_basic_lib.dart';
import 'package:todo_flutter/domain/request/list_request.dart';
import 'package:todo_flutter/domain/request/model/list_data_model.dart';

class RefreshPage extends StatefulWidget {
  const RefreshPage({Key? key}) : super(key: key);

  @override
  _RefreshPageState createState() => _RefreshPageState();
}

class _RefreshPageState extends BaseState<RefreshPage> {
  late ListBloc<Datas> _listBloc;

  @override
  void initState() {
    super.initState();
    _listBloc = ListBloc(request: ListRequest());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('下拉刷新示例')),
      body: CommonRefreshWidget<Datas>(
        bloc: _listBloc,
        child: (BuildContext context, List<Datas> list) {
          print('${list.length}');
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              return SizedBox();
            },
          );
        },
      ),
    );
  }
}
