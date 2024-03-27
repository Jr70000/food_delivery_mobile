
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/presentation/updateorder/comfirm_order_seller.dart';
import 'package:flutter/material.dart';


class CheckcomfirmorderModel extends FlutterFlowModel<CheckcomfirmorderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

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
