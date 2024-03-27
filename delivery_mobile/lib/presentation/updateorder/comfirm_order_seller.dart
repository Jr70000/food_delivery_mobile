import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/check_comfirm_seller.dart';
import 'package:delivery_mobile/widgets/bottom_nav_bar.dart';

import 'package:flutter/material.dart';


class CheckcomfirmorderWidget extends StatefulWidget {
  const CheckcomfirmorderWidget({super.key});

  @override
  State<CheckcomfirmorderWidget> createState() =>
      _CheckcomfirmorderWidgetState();
}

class _CheckcomfirmorderWidgetState extends State<CheckcomfirmorderWidget> {
  late CheckcomfirmorderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckcomfirmorderModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }
    int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
          backgroundColor: const Color(0xFFE9EBEE),
          automaticallyImplyLeading: true,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
            child: Container(
              width: 50,
              height: 50,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/burger.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 220, 0),
            child: Text(
              'Food Delivery',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
              child: Icon(
                Icons.notifications_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.17, -0.94),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0,0,0,50),
                  child: Container(
                    width: 467,
                    height: 182,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF86C2B),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.22, -0.38),
                          child: Text(
                            '\$ 0.00',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.3, -0.7),
                          child: Icon(
                            Icons.account_balance_wallet_outlined,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 80,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.57, 0.21),
                          child: Text(
                            'This week',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.44, 0.19),
                          child: Text(
                            'This month',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0, 0.42),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 65, 36, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: VerticalDivider(
                                    thickness: 1,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.44, 0.56),
                          child: Text(
                            '\$ 3,513.23',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.57, 0.62),
                          child: Text(
                            '\$ 0.00',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.11, -0.65),
                          child: Text(
                            'Today',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.11, -0.53),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 110, 20, 0),
                  child: Container(
                    width: 460,
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
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Pending (0)',
                                  options: FFButtonOptions(
                                    height: 40,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Comfirmed (1)',
                                  options: FFButtonOptions(
                                    width: 133,
                                    height: 40,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                    print('Button pressed ...');
                                  },
                                  text: 'Cooking (0)',
                                  options: FFButtonOptions(
                                    height: 40,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                    print('Button pressed ...');
                                  },
                                  text: 'Ready For Hando',
                                  options: FFButtonOptions(
                                    width: 100,
                                    height: 40,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                alignment: const AlignmentDirectional(-0.93, -0.18),
                child: Theme(
                  data: ThemeData(
                    checkboxTheme: CheckboxThemeData(
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    unselectedWidgetColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8,70,0,0),
                    child: Checkbox(
                      value: _model.checkboxValue ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.checkboxValue = newValue!);
                      },
                      activeColor: FlutterFlowTheme.of(context).tertiary,
                      checkColor: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.4,
                child: Align(
                  alignment: const AlignmentDirectional(-0.62, -0.18),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0,70,0,0),
                    child: Text(
                      'Campaign Order',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, -0.07),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8,70,0,0),
                  child: Text(
                    'Order ID:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: const AlignmentDirectional(-0.88, 0.02),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8,90,0,0),
                    child: Text(
                      '21 Oct 2021 - 10.07 AM |',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.46, -0.07),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 40, 0),
                  child: Text(
                    '#100039',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.8,
                child: Align(
                  alignment: const AlignmentDirectional(0.07, 0.02),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 40, 0),
                    child: Text(
                      'Delivery',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).tertiary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Align(
                  alignment: const AlignmentDirectional(0.84, 0.02),
                  child: Text(
                    '1 item',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.97, 0.03),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFDE6834),
                  size: 20,
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 517,),
              child: CustomBottomNavBar(selectedIndex: _selectedIndex , onItemTapped: _onItemTapped) ,)
            ],
          ),
        ),
      ),
    );
  }
}
