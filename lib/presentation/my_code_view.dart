import 'package:flutter/material.dart';
import 'package:getx_crud_starter_example/presentation/uiComponentDesign/input_edit_text.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class MyCodeView extends StatelessWidget {
  const MyCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: WidgetWithCodeView(
          child: CustomEditInput(),
          filePath: 'lib/presentation/uiComponentDesign/input_edit_text.dart',
          iconBackgroundColor: Colors.white,
          iconForegroundColor: Colors.pink,
          labelBackgroundColor: Theme.of(context).canvasColor,
          labelTextStyle:
          TextStyle(color: Theme.of(context).textTheme.bodyText1?.color!),
          showLabelText: true,
        ),
      ),
    );
  }
}
