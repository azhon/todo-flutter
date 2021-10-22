### 效果图
<img src="https://github.com/azhon/todo-flutter/blob/sample/img/img1.png" width="300"> <img src="https://github.com/azhon/todo-flutter/blob/sample/img/img2.png" width="300">
<img src="https://github.com/azhon/todo-flutter/blob/sample/img/img3.png" width="300"> <img src="https://github.com/azhon/todo-flutter/blob/sample/img/img4.png" width="300">
### 目录结构
- common/api/：网络请求
- common/route/：页面路由
- domain/domain/：Bloc相关
- main.dart：todo-flutter项目初始化
- view/：使用示例
```
./lib
├── common
│   ├── api
│   │   ├── api_convert.dart
│   │   └── api_provider.dart
│   └── route
│       ├── module_route.dart
│       ├── module_route_name.dart
│       └── route.sh
├── domain
│   ├── bean
│   │   └── get_bean.dart
│   ├── bloc
│   │   ├── bloc
│   │   │   ├── test_bloc.dart
│   │   │   ├── test_event.dart
│   │   │   └── test_state.dart
│   │   └── net
│   │       ├── net_bloc.dart
│   │       ├── net_event.dart
│   │       └── net_state.dart
│   └── repository
│       └── net_request.dart
├── main.dart
├── util
│   └── image_path.dart
└── view
    ├── bloc_page.dart
    ├── button_page.dart
    ├── image_page.dart
    ├── input_page.dart
    ├── net_page.dart
    └── text_page.dart
```