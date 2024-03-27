import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/order_history_model.dart';
import 'package:delivery_mobile/presentation/pages/addons/order_history.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class OrderhistoryWidget extends StatefulWidget {
  const OrderhistoryWidget({super.key});

  @override
  State<OrderhistoryWidget> createState() => _OrderhistoryWidgetState();
}

class _OrderhistoryWidgetState extends State<OrderhistoryWidget> {
  late OrderhistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderhistoryModel());
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
        appBar: AppBar(
          backgroundColor: const Color(0xFFE9ECF0),
          automaticallyImplyLeading: true,
          title: Text(
            'Order History',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0, -1.06),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 103, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 41,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                // Define the key

// Then use it in your widget
                                FFButtonWidget(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AllListWidget(),
                                      ),
                                    );
                                  },
                                  text: 'All (38)',
                                  options: FFButtonOptions(
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    iconPadding: EdgeInsets.zero,
                                    color: const Color(0xFFF7F9FC),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 1,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),

                                FFButtonWidget(
                                  onPressed: () {
                                  },
                                  text: 'Comfirmed (1)',
                                  options: FFButtonOptions(
                                    width: 133,
                                    height: 40,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 24, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFF8F5F5),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 1,
                                        ),
                                    elevation: 3,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hoverTextColor: const Color(0xFFF8F5F5),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                  },
                                  text: 'Cooking (0)',
                                  options: FFButtonOptions(
                                    height: 40,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 24, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFF8F5F5),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 1,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 3,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hoverTextColor: const Color(0xFFF8F5F5),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                  },
                                  text: 'Ready For Handover',
                                  options: FFButtonOptions(
                                    width: 100,
                                    height: 40,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFEDEFF3),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 1,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 3,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hoverTextColor: const Color(0xFFF8F5F5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.2, -0.97),
                child: Container(
                  width: 384,
                  height: 62,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF05A18),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.69, -0.56),
                        child: Text(
                          'Hello World',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.73, -0.64),
                        child: Text(
                          'This month',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.01, -0.64),
                        child: Text(
                          'This week',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.68, 0.31),
                        child: Icon(
                          Icons.card_giftcard_rounded,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 20,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.06, 0.31),
                        child: Icon(
                          Icons.card_giftcard_rounded,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 20,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.66, 0.38),
                        child: Icon(
                          Icons.card_giftcard_rounded,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 20,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.57, 0.33),
                        child: Text(
                          '1',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 14,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.78, 0.42),
                        child: Text(
                          '27',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.05, 0.33),
                        child: Text(
                          '8',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 14,
                              ),
                        ),
                      ),
                    ],
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
