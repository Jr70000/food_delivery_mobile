import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/walletmodel.dart';

import 'package:flutter/material.dart';

class WalletpageWidget extends StatefulWidget {
  const WalletpageWidget({super.key});

  @override
  State<WalletpageWidget> createState() => _WalletpageWidgetState();
}

class _WalletpageWidgetState extends State<WalletpageWidget> {
  late Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Model());
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
          backgroundColor: const Color(0xFFF7F9FC),
          automaticallyImplyLeading: true,
          title: Text(
            'wallet',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: const[],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.93, -0.45),
                child: Container(
                  width: 221,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.09, 0.39),
                        child: Text(
                          'Pending Withdraw',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 15,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.07, -0.49),
                        child: Text(
                          '\$ 0.00',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFEF5F20),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.93, -0.07),
                child: Container(
                  width: 221,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.09, 0.39),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            child: Text(
                              'Collected Cash from Customer',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 14,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.07, -0.49),
                        child: Text(
                          '\$ 709.84',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFEF5F20),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.93, -0.46),
                child: Container(
                  width: 221,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.09, 0.39),
                          child: Text(
                            'Withdraw',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.07, -0.49),
                        child: Text(
                          '\$ 3,890.25',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFEF5F20),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.96, -0.08),
                child: Container(
                  width: 221,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.09, 0.39),
                          child: Text(
                            'Total Earning',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.07, -0.49),
                        child: Text(
                          '\$ 5,270.81',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFEF5F20),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.19, -0.98),
                child: Container(
                  width: 464,
                  height: 147,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEF5F20),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.76, 0.06),
                        child: Text(
                          'Withdraw',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFF7F9FC),
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.16, -0.43),
                        child: Text(
                          'Withdrawable Amount',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFF7F9FC),
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.29, 0.15),
                        child: Text(
                          '\$ 670.72',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFF7F9FC),
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.86, -0.07),
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Color(0xFFF7F9FC),
                          size: 80,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(0.93, 0.06),
                        child: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Color(0xFFF6F8FA),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Align(
                  alignment: const AlignmentDirectional(-0.9, 0.4),
                  child: Text(
                    'Transferred to bank',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.91, 0.19),
                child: Text(
                  'Withdraw History',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, 0.33),
                child: Text(
                  '\$ 3,890.25',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Align(
                  alignment: const AlignmentDirectional(0.93, 0.4),
                  child: Text(
                    'Approved',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Align(
                  alignment: const AlignmentDirectional(0.92, 0.33),
                  child: Text(
                    '09 Oct 2021 01:12 PM',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.92, 0.17),
                child: Text(
                  'View All',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFFEF5F20),
                        fontWeight: FontWeight.bold,
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
