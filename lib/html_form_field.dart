import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'html_editor.dart';

class HtmlFormField extends FormField<String> {
  HtmlFormField(
      {Key key,
      String initialValue,
      double height,
      String widthImage,
      bool useBottomSheet,
      bool showBottomToolbar,
      ValueChanged<String> onChanged,
      InputDecoration decoration = const InputDecoration()})
      : super(
            key: key,
            initialValue: initialValue ?? '',
            builder: (FormFieldState<String> field) {
              final _HtmlFormFieldState state = field as _HtmlFormFieldState;
              return HtmlEditor(
                key: state.htmlEditorKey,
                value: initialValue,
                height: height,
                widthImage: widthImage,
                useBottomSheet: useBottomSheet,
                showBottomToolbar: showBottomToolbar,
                hint: decoration.labelText ?? decoration.hintText,
                onChanged: onChanged,
              );
            });

  @override
  _HtmlFormFieldState createState() => _HtmlFormFieldState();
}

class _HtmlFormFieldState extends FormFieldState<String> {
  @override
  HtmlFormField get widget => super.widget as HtmlFormField;
  GlobalKey<HtmlEditorState> htmlEditorKey = GlobalKey();
}
