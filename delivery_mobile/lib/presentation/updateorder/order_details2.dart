
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class ComfirmorderpageWidget extends StatefulWidget {
  const ComfirmorderpageWidget({super.key});

  @override
  State<ComfirmorderpageWidget> createState() => _ComfirmorderpageWidgetState();
}

class _ComfirmorderpageWidgetState extends State<ComfirmorderpageWidget> {
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
            'Hello World',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: true,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.97, -0.98),
                child: Text(
                  'Order ID:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 17,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.46, -0.98),
                child: Text(
                  '100039',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.52, -0.97),
                child: FaIcon(
                  FontAwesomeIcons.solidCircle,
                  color: Color(0xFF119A8A),
                  size: 10,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.91, -0.98),
                child: Text(
                  'Handover',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.52, -0.83),
                child: Container(
                  width: 425,
                  height: 141,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.91, -0.07),
                        child: Container(
                          width: 50,
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/cheeze burger.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.18, 0.06),
                          child: Text(
                            'laxam mandir bharatpur rajasthan',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.54, -0.35),
                        child: Text(
                          'Tasty Fresh',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.92, -0.82),
                          child: Text(
                            'Restaurant Details',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.49, 0.7),
                        child: Icon(
                          Icons.call,
                          color: FlutterFlowTheme.of(context).tertiary,
                          size: 28,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.31, 0.67),
                        child: Text(
                          'Call',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-0.09, 0.66),
                        child: Icon(
                          Icons.directions_rounded,
                          color: Color(0xFF5E7382),
                          size: 28,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(0.21, 0.6),
                          child: Text(
                            'Direction',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.52, -0.83),
                child: Container(
                  width: 425,
                  height: 141,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.91, -0.07),
                        child: Container(
                          width: 50,
                          height: 50,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/cheeze burger.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.18, 0.06),
                          child: Text(
                            'laxam mandir bharatpur rajasthan',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.54, -0.35),
                        child: Text(
                          'Tasty Fresh',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Align(
                          alignment: const AlignmentDirectional(-0.92, -0.82),
                          child: Text(
                            'Restaurant Details',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.52, -0.83),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 114),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Container(
                      width: 425,
                      height: 115,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.95, -0.23),
                            child: Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/cheeze burger.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Align(
                              alignment: const AlignmentDirectional(-0.12, -0.06),
                              child: Text(
                                'laxam mandir bharatpur rajasthan',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.54, -0.35),
                            child: Text(
                              'Tasty Fresh',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.7,
                            child: Align(
                              alignment: const AlignmentDirectional(-0.84, -1.05),
                              child: Text(
                                'Restaurant Details',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.49, 0.7),
                            child: Icon(
                              Icons.call,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 28,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.31, 0.67),
                            child: Text(
                              'Call',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(-0.07, 0.68),
                            child: Icon(
                              Icons.directions_rounded,
                              color: Color(0xFF5E7382),
                              size: 28,
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Align(
                              alignment: const AlignmentDirectional(0.21, 0.6),
                              child: Text(
                                'Direction',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.22, -0.33),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 147),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 425,
                      height: 141,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.91, -0.07),
                            child: Container(
                              width: 50,
                              height: 50,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/cheeze burger.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Align(
                              alignment: const AlignmentDirectional(-0.34, 0.08),
                              child: Text(
                                '139 Bharatpur 321001 india',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.54, -0.35),
                            child: Text(
                              'Ved Verma',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.7,
                            child: Align(
                              alignment: const AlignmentDirectional(-0.88, -0.92),
                              child: Text(
                                'Customer Contact Details',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.49, 0.7),
                            child: Icon(
                              Icons.call,
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 28,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-0.31, 0.67),
                            child: Text(
                              'Call',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                            ),
                          ),
                          const Align(
                            alignment: AlignmentDirectional(-0.09, 0.66),
                            child: Icon(
                              Icons.directions_rounded,
                              color: Color(0xFF5E7382),
                              size: 28,
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Align(
                              alignment: const AlignmentDirectional(0.21, 0.6),
                              child: Text(
                                'Direction',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -0.05),
                child: Container(
                  width: 422,
                  height: 69,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.93, -0.05),
                        child: Text(
                          'Item: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.94, -0.16),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'COD',
                          options: FFButtonOptions(
                            width: 79,
                            height: 27,
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            iconPadding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: const Color(0xFFE76831),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 11,
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
                        alignment: const AlignmentDirectional(-0.71, -0.08),
                        child: Text(
                          '1',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0.37),
                child: Container(
                  width: 425,
                  height: 118,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Container(
                    height: 154,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.85, -0.51),
                          child: Text(
                            'Quantity:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.43, 0.9),
                          child: Text(
                            'Addons:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.43, 0.07),
                          child: Text(
                            '\$ 108.00',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.25, -0.46),
                          child: Text(
                            'Double cheeze burger',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: const AlignmentDirectional(-0.07, 0.04),
                            child: Text(
                              '\$-120.00',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Align(
                            alignment: const AlignmentDirectional(0.82, 0.89),
                            child: Text(
                              'Catch up pauche (1), Chilli flux(1)',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.95, -0.48),
                          child: Text(
                            '1',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.89, 0.32),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/cheeze burger.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
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
