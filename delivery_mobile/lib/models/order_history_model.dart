
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/presentation/pages/addons/order_history2.dart';
import 'package:flutter/material.dart';


class OrderhistoryModel extends FlutterFlowModel<OrderhistoryWidget> {
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

  Future list(BuildContext context) async {
    await list(context);
  }

  /// Additional helper methods are added here.
}
