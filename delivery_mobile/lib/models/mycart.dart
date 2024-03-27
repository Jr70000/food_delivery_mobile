
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/presentation/pages/cartpage/mycart.dart';
import 'package:flutter/material.dart';


class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // State field(s) for RatingBar widget.
  double? ratingBarValue4;
  // State field(s) for CountController widget.
  int? countControllerValue4;

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
