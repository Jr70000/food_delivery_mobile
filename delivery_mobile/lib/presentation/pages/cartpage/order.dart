
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/checkoutpagemodel1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class CheckoutpageWidget extends StatefulWidget {
  const CheckoutpageWidget({super.key});

  @override
  State<CheckoutpageWidget> createState() => _CheckoutpageWidgetState();
}

class _CheckoutpageWidgetState extends State<CheckoutpageWidget> {
  late Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Order kindly wait your order is in pending',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).alternate,
        ),
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.12, -0.08),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Image.asset(
                      'assets/images/successfull2.webp',
                      width: 170,
                      height: 155,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.4,
                child: Align(
                  alignment: const AlignmentDirectional(-0.05, 0.32),
                  child: Text(
                    'Your order is placed successfully.we our delivery process\nand you will receive your food soon.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.08, 0.2),
                child: Text(
                  'You place The Order Successfully',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.21, 0.5),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Back to Home',
                    options: FFButtonOptions(
                      width: 431,
                      height: 62,
                      padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: const Color(0xFFFA530D),
                      textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                          ),
                      elevation: 3,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
