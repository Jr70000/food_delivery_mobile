import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/model.dart';
import 'package:delivery_mobile/widgets/swipe_button.dart';
import 'package:flutter/material.dart';

class UpdateorderWidget extends StatefulWidget {
  const UpdateorderWidget({super.key});

  @override
  State<UpdateorderWidget> createState() => _UpdateorderWidgetState();
}

class _UpdateorderWidgetState extends State<UpdateorderWidget> {
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
          backgroundColor: const Color(0xFFF8F5F5),
          automaticallyImplyLeading: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24,
          ),
          title: Text(
            'Order Details',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.93, -0.97),
                child: Text(
                  'Hello World',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.83, -0.94),
                child: Text(
                  'Hello World',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.57, -0.25),
                child: Text(
                  'Hello World',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.1, -0.98),
                child: Container(
                  width: 445,
                  height: 85,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0EEEE),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.95, -0.88),
                        child: Text(
                          '21 Oct 2021',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.93, 0.34),
                        child: Text(
                          'Delivery',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.5, -0.84),
                        child: Text(
                          '100039',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.92, 0.43),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Cash On Delivery',
                          options: FFButtonOptions(
                            width: 147,
                            height: 24,
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            iconPadding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: const Color(0xFFF5733B),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 1,
                                  fontWeight: FontWeight.w200,
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
                      Align(
                        alignment: const AlignmentDirectional(-0.93, -0.83),
                        child: Text(
                          'Order ID:',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.5, -0.87),
                        child: Icon(
                          Icons.access_time_filled,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.35, -0.81),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                  child: Container(
                    width: 446,
                    height: 49,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEAEDF0),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.94, -0.29),
                          child: Text(
                            'Cooking',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.93, -0.11),
                          child: Text(
                            'Item:',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        const Align(
                          alignment: AlignmentDirectional(0.51, -0.22),
                          child: Icon(
                            Icons.circle_rounded,
                            color: Color(0xFF1A8C7E),
                            size: 10,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.75, -0.11),
                          child: Text(
                            '1',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFE96932),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.25, -0.66),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 56, 0, 0),
                  child: Container(
                    width: 437,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF0EAEA),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.99, -0.38),
                          child: Text(
                            '1',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFE96932),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.31, -0.38),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 128, 0, 0),
                  child: Container(
                    width: 443,
                    height: 167,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3EAEA),
                    ),
                    child: const Stack(
                      children: [],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.87, -0.65),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/mwmx0_600',
                    width: 75,
                    height: 63,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.49, -0.12),
                child: Text(
                  'Ved Verma',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.88, -0.22),
                child: Text(
                  'Customer Details',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.51, -0.35),
                child: Text(
                  'Addons:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.92, -0.49),
                child: Text(
                  'Quantity:',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.32, -0.49),
                child: Text(
                  'Double cheeze burger',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.89, 0.13),
                child: Text(
                  'Addons',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, 0.06),
                child: Text(
                  'item Price',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.93, 0.13),
                child: Text(
                  '(+) \$ 10.00',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.9, 0.07),
                child: Text(
                  '\$ 120 .00',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.24, -0.06),
                child: Text(
                  '139 Bharatpur 321001 india',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.5, -0.43),
                child: Text(
                  '\$ 120.00',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Opacity(
                opacity: 0.6,
                child: Align(
                  alignment: const AlignmentDirectional(0.34, -0.35),
                  child: Text(
                    'Catch up pauche (1), chilli flux (1)',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 11,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.93, -0.47),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/dave_burger.jpg',
                    width: 62,
                    height: 62,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0.49),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 54, 0, 0),
                  child: Container(
                    width: 434,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xFFECE5E5),
                    ),
                    child: const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                      child: Stack(
                        children: [],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.89, 0.55),
                child: Text(
                  'Delivery Fee',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, 0.47),
                child: Text(
                  'Vat/Tax',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.88, 0.39),
                child: Text(
                  'Discount',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.89, 0.32),
                child: Text(
                  'Subtotal',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.89, 0.47),
                child: Text(
                  '(+) \$ 5.90',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.93, 0.39),
                child: Text(
                  '(-) \$ 12.00',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.92, 0.32),
                child: Text(
                  '\$ 130.00',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.87, 0.71),
                child: Text(
                  '\$ 128.90',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).tertiary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.89, 0.72),
                child: Text(
                  'Total Amount',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).tertiary,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.87, 0.54),
                child: Text(
                  '(+) \$5.00',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.9, -0.12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/pizza.png',
                    width: 53,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 400, 0, 0,
              ),
              child: MySwipeButton() ,)
            ],
          ),
        ),
      ),
    );
  }
}
