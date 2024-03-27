
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/ratingmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';




class Ratingpage2Widget extends StatefulWidget {
  const Ratingpage2Widget({super.key});

  @override
  State<Ratingpage2Widget> createState() => _Ratingpage2WidgetState();
}

class _Ratingpage2WidgetState extends State<Ratingpage2Widget>
    with TickerProviderStateMixin {
  late Ratingpage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Ratingpage2Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
          backgroundColor: const Color(0xFFECEEF1),
          automaticallyImplyLeading: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24,
          ),
          title: Text(
            'Rate-& Review',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Align(
                alignment: const Alignment(0, 0),
                child: TabBar(
                  labelColor: FlutterFlowTheme.of(context).primaryText,
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                  unselectedLabelStyle: const TextStyle(),
                  indicatorColor: const Color(0xFFCD5927),
                  padding: const EdgeInsets.all(4),
                  tabs: [
                    const Tab(
                      text: 'item',
                    ),
                    const Tab(
                      text: 'Delivery man',
                    ),
                  ],
                  controller: _model.tabBarController,
                  onTap: (i) async {
                    [() async {}, () async {}][i]();
                  },
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.35, -0.94),
                          child: Container(
                            width: 384,
                            height: 323,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0, -0.96),
                                  child: Container(
                                    width: 378,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    child: Stack(
                                      children: [
                                        Opacity(
                                          opacity: 0.5,
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                0.87, -0.03),
                                            child: Text(
                                              'Quantity:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -0.17, -0.33),
                                          child: Text(
                                            'Double cheeze burger',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.94, 0),
                                          child: Text(
                                            '1',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: const Color(0xFFD46230),
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.38, 0.13),
                                          child: Text(
                                            '\$ 120.00',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(-0.76, 0.32),
                                    child: Text(
                                      'Write your review here...',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.6,
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(-0.06, -0.22),
                                    child: Text(
                                      'Rate the Food',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.6,
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(-0.06, 0.06),
                                    child: Text(
                                      'Share Your Opinion',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.12, -0.09),
                                  child: RatingBar.builder(
                                    onRatingUpdate: (newValue) => setState(() =>
                                        _model.ratingBarValue1 = newValue),
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFD25722),
                                    ),
                                    direction: Axis.horizontal,
                                    initialRating: _model.ratingBarValue1 ??= 3,
                                    unratedColor:
                                        FlutterFlowTheme.of(context).accent3,
                                    itemCount: 5,
                                    itemSize: 20,
                                    glowColor: const Color(0xFFD25722),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.14, 0.91),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Submit',
                                    options: FFButtonOptions(
                                      width: 312,
                                      height: 40,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24, 0, 24, 0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 0),
                                      color: const Color(0xFFE56026),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
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
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.85, -0.92),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/cheeze_burger.png',
                              width: 71,
                              height: 65,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-0.88, -0.96),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(9, 0, 9, 0),
                            child: Container(
                              width: 390,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF1F3F5),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-0.43, 0),
                                    child: Text(
                                      'Delivery boy',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.45, 0.46),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) => setState(
                                          () => _model.ratingBarValue2 =
                                              newValue),
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: _model.ratingBarValue2 ??=
                                          5,
                                      unratedColor:
                                          FlutterFlowTheme.of(context).accent3,
                                      itemCount: 5,
                                      itemSize: 16,
                                      glowColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.77, -0.86),
                          child: Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/delivery_man.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Align(
                            alignment: const AlignmentDirectional(-0.89, -0.95),
                            child: Text(
                              'Delivery Man',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Align(
                            alignment: const AlignmentDirectional(-0.07, -0.79),
                            child: Text(
                              '(0)',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 11,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.82, -0.87),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.call_outlined,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.13, -0.41),
                          child: Container(
                            width: 376,
                            height: 337,
                            decoration: const BoxDecoration(
                              color: Color(0xFFEFF2F5),
                            ),
                            child: Container(
                              height: 90,
                              child: Stack(
                                children: [
                                  Opacity(
                                    opacity: 0.7,
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0.04, -0.32),
                                      child: Text(
                                        'Share Your Opinion',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.6,
                                    child: Align(
                                      alignment: const AlignmentDirectional(0, -0.91),
                                      child: Text(
                                        'Rate His Service',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.7,
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(-0.78, -0.04),
                                      child: Text(
                                        'Writer your review here...',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.09, 0.94),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        width: 312,
                                        height: 50,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24, 0, 24, 0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 0, 0),
                                        color: const Color(0xFFD25B28),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
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
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.01, -0.52),
                          child: RatingBar.builder(
                            onRatingUpdate: (newValue) => setState(
                                () => _model.ratingBarValue3 = newValue),
                            itemBuilder: (context, index) => Icon(
                              Icons.star_rounded,
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                            direction: Axis.horizontal,
                            initialRating: _model.ratingBarValue3 ??= 5,
                            unratedColor: FlutterFlowTheme.of(context).accent3,
                            itemCount: 5,
                            itemSize: 25,
                            glowColor: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
