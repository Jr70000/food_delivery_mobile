
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:flutter/material.dart';

class Model extends FlutterFlowModel<Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
