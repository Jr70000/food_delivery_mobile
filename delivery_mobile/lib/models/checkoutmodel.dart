import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:flutter/material.dart';

class Checkout1Model extends ChangeNotifier {
  final unfocusNode = FocusNode();
  FormFieldController<String>? radioButtonValueController1;
  FormFieldController<String>? radioButtonValueController2;
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  bool? checkboxValue;
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;

  // Example method to update state
  void updateTextField1(String value) {
    textController1?.text = value;
    notifyListeners();
  }

  // Add other methods as needed to update the state
}
