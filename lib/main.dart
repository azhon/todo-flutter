import 'package:flutter/material.dart';
import 'package:flutter_basic_lib/flutter_basic_lib.dart';
import 'package:todo_flutter/common/route/module_route.dart';
import 'package:todo_flutter/common/route/module_route_name.dart';

void main() {
  runApp(TodoApp(home: MyHomePage()));
  ModuleRoute().initRoute();
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends BaseState<MyHomePage> {
  List<List<String>> routes = [
    ['文本示例', ModuleRouteName.TextPage],
    ['按钮示例', ModuleRouteName.ButtonPage],
    ['图片示例', ModuleRouteName.ImagePage],
    ['Toast示例', ModuleRouteName.ToastPage],
    ['输入框示例', ModuleRouteName.InputPage],
    ['Bloc示例', ModuleRouteName.BlocPage],
    ['网络示例', ModuleRouteName.NetPage],
    ['下拉刷新示例', ModuleRouteName.RefreshPage],
    ['Sliver示例', ModuleRouteName.SliverPage],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO-Flutter'),
      ),
      body: Padding(
        padding: symmetric(16, 16),
        child: ListView.builder(
          itemCount: routes.length,
          itemBuilder: (context, index) {
            return CommonButton(
              routes[index].first,
              margin: only(bottom: 10),
              radius: 10,
              onPressed: () {
                RouterUtil.instance
                    .build(routes[index].last)
                    .withString('key-s', '')
                    .withBool('key-b', false)
                    .withNum('key-n', 3)
                    .navigate();
              },
            );
          },
        ),
      ),
    );
  }
}
