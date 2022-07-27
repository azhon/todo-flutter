/// createTime: 2021/9/27 on 17:59
/// desc:
///
/// @author azhon
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basic_lib/flutter_basic_lib.dart';
import 'package:todo_flutter/util/image_path.dart';

class InputPage extends BaseStatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends BaseState<InputPage> {
  GlobalKey<CommonInputState> _key = GlobalKey();
  GlobalKey<CommonInputState> _psdKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('输入框示例')),
      body: SingleChildScrollView(
        child: Padding(
          padding: all(16),
          child: Column(
            children: [
              CommonInput(
                placeholder: '自动获取焦点',
                autofocus: true,
              ),
              sizedBox(height: 10),
              CommonInput(
                placeholder: '监听输入的内容',
                onTextChange: (text) {
                  LogUtil.d('输入框监听：$text');
                },
              ),
              sizedBox(height: 10),
              CommonInput(
                text: '初始输入内容',
                placeholder: '初始输入内容',
                autofocus: true,
              ),
              sizedBox(height: 10),
              CommonInput(
                key: _key,
                placeholder: '前后加组件',
                textInputAction: TextInputAction.search,
                suffixMode: OverlayVisibilityMode.editing,
                onSubmitted: (text) {
                  LogUtil.d('点击键盘完成：$text');
                },
                prefix: Padding(
                  padding: symmetric(0, 4),
                  child: CommonImage(
                    asset: ImagePath.ic_search,
                    width: 18,
                    height: 18,
                  ),
                ),
                suffix: CommonClickWidget(
                  onTap: () {
                    _key.currentState?.clearText();
                  },
                  child: CommonImage(
                    asset: ImagePath.ic_clear,
                    width: 18,
                    height: 18,
                  ),
                ),
              ),
              sizedBox(height: 10),
              CommonInput(
                placeholder: '最多输入10个字',
                maxLength: 10,
              ),
              sizedBox(height: 10),
              CommonInput(
                placeholder: '手机号码输入框',
                maxLength: 11,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              sizedBox(height: 10),
              CommonInput(
                placeholder: '密码输入框，*显示',
                maxLines: 1,
                obscureText: true,
                obscuringCharacter: '*',
              ),
              sizedBox(height: 10),
              CommonInput(
                key: _psdKey,
                placeholder: '密码输入框',
                maxLines: 1,
                obscureText: true,
                suffix: Listener(
                  onPointerDown: (detail) =>
                      _psdKey.currentState?.changeObscureText(false),
                  onPointerUp: (de) =>
                      _psdKey.currentState?.changeObscureText(true),
                  child: CommonImage(
                    asset: ImagePath.ic_eye,
                    width: 18,
                    height: 18,
                  ),
                ),
              ),
              sizedBox(height: 10),
              CommonInput(
                placeholder: '边框输入框',
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(setRadius(20)),
                  border:
                      Border.all(color: Color(0xFFECEEF2), width: setWidth(2)),
                ),
                padding: symmetric(10, 8),
              ),
              sizedBox(height: 10),
              CommonInputArea(
                maxLength: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
