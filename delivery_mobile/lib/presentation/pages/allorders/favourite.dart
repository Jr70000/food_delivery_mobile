
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/model2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';




class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget>
    with TickerProviderStateMixin {
  late FavouriteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouriteModel());

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
          backgroundColor: const Color(0xFFF0F2F5),
          automaticallyImplyLeading: true,
          title: Text(
            'Favourite',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
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
                alignment: const AlignmentDirectional(0, 0),
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).tertiary,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 13,
                                ),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: const Color(0xFFE06632),
                        padding: const EdgeInsets.all(4),
                        tabs: const [
                          Tab(
                            text: 'Food',
                          ),
                          Tab(
                            text: 'Stores',
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
                                alignment: const AlignmentDirectional(-0.58, -0.65),
                                child: Container(
                                  width: 454,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(0, 0),
                                        child: Stack(
                                          children: [
                                            Opacity(
                                              opacity: 0.5,
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.46, -0.23),
                                                child: Text(
                                                  'Tasty fresh',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 13,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.3, -0.68),
                                              child: Text(
                                                'Double Cheeze burger',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.01, 0.23),
                                              child: Text(
                                                '(0)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 11,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.45, 0.27),
                                              child: RatingBar.builder(
                                                onRatingUpdate: (newValue) =>
                                                    setState(() =>
                                                        _model.ratingBarValue1 =
                                                            newValue),
                                                itemBuilder: (context, index) =>
                                                    Icon(
                                                  Icons.star_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                ),
                                                direction: Axis.horizontal,
                                                initialRating: _model
                                                    .ratingBarValue1 ??= 3,
                                                unratedColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                itemCount: 5,
                                                itemSize: 18,
                                                glowColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            const Align(
                                              alignment: AlignmentDirectional(
                                                  0.89, 0.66),
                                              child: Icon(
                                                Icons.favorite_sharp,
                                                color: Color(0xFFDE612B),
                                                size: 24,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.88, -0.36),
                                              child: Icon(
                                                Icons.add,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.9, -0.07),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/dave2.png',
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.48, 0.73),
                                              child: Text(
                                                '\$ 108.00',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.03, -0.32),
                                child: Container(
                                  width: 454,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: const AlignmentDirectional(0, 0),
                                        child: Stack(
                                          children: [
                                            Opacity(
                                              opacity: 0.5,
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    -0.49, 0),
                                                child: Text(
                                                  'Tasty fresh',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 13,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.36, -0.46),
                                              child: Text(
                                                'Double Cheeze burger',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.07, 0.45),
                                              child: Text(
                                                '(0)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 11,
                                                        ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.48, 0.47),
                                              child: RatingBar.builder(
                                                onRatingUpdate: (newValue) =>
                                                    setState(() =>
                                                        _model.ratingBarValue2 =
                                                            newValue),
                                                itemBuilder: (context, index) =>
                                                    Icon(
                                                  Icons.star_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                ),
                                                direction: Axis.horizontal,
                                                initialRating: _model
                                                    .ratingBarValue2 ??= 3,
                                                unratedColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent3,
                                                itemCount: 5,
                                                itemSize: 18,
                                                glowColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            const Align(
                                              alignment: AlignmentDirectional(
                                                  0.89, 0.66),
                                              child: Icon(
                                                Icons.favorite_sharp,
                                                color: Color(0xFFDE612B),
                                                size: 24,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.88, -0.36),
                                              child: Icon(
                                                Icons.add,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.94, -0.14),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  'assets/images/Screenshot_56-7.jpg',
                                                  width: 60,
                                                  height: 60,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.49, 0.89),
                                              child: Text(
                                                '\$ 96.00',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.53, -0.98),
                                child: Container(
                                  width: 494,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Stack(
                                    children: [
                                      Opacity(
                                        opacity: 0.5,
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              -0.44, -0.13),
                                          child: Text(
                                            'Tasty fresh',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.29, -0.53),
                                        child: Text(
                                          'Double Cheeze burger',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.01, 0.29),
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
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.42, 0.37),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              setState(() => _model
                                                  .ratingBarValue3 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating:
                                              _model.ratingBarValue3 ??= 3,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent3,
                                          itemCount: 5,
                                          itemSize: 18,
                                          glowColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.89, 0.66),
                                        child: Icon(
                                          Icons.favorite_sharp,
                                          color: Color(0xFFDE612B),
                                          size: 24,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.88, -0.58),
                                        child: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.88, -0.14),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/images/cheeze_burger.png',
                                            width: 60,
                                            height: 60,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.46, 0.83),
                                        child: Text(
                                          '\$ 108.00',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-0.64, -0.65),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: Container(
                                    width: 477,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.05, 0.29),
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
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.43, 0.37),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) =>
                                                setState(() =>
                                                    _model.ratingBarValue4 =
                                                        newValue),
                                            itemBuilder: (context, index) =>
                                                Icon(
                                              Icons.star_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating:
                                                _model.ratingBarValue4 ??= 3,
                                            unratedColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent3,
                                            itemCount: 5,
                                            itemSize: 18,
                                            glowColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                          ),
                                        ),
                                        const Align(
                                          alignment:
                                              AlignmentDirectional(0.94, -0.11),
                                          child: Icon(
                                            Icons.favorite_sharp,
                                            color: Color(0xFFDE612B),
                                            size: 24,
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-0.45, -0.6),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Pizza Republic',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.6,
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                -0.23, -0.13),
                                            child: Text(
                                              'laxam mandir bharatpur',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: const AlignmentDirectional(
                                              -0.92, -0.35),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/pngimg.com_-_pizza_PNG44076_-_Copy.png',
                                              width: 64,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.86, -0.32),
                                child: Container(
                                  width: 4.5451910558080945e+100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.04, 0.29),
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
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.43, 0.34),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              setState(() => _model
                                                  .ratingBarValue5 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating:
                                              _model.ratingBarValue5 ??= 3,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent3,
                                          itemCount: 5,
                                          itemSize: 18,
                                          glowColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.95, -0.18),
                                        child: Icon(
                                          Icons.favorite_sharp,
                                          color: Color(0xFFC95A2A),
                                          size: 24,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.45, -0.6),
                                        child: Text(
                                          'Shahi rasoi',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.6,
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              -0.23, -0.13),
                                          child: Text(
                                            'laxam mandir bharatpur',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.91, -0.34),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/images/dave2.png',
                                            width: 64,
                                            height: 60,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.32, -0.98),
                                child: Container(
                                  width: 454,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Stack(
                                    children: [
                                      Opacity(
                                        opacity: 0.6,
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              -0.23, -0.13),
                                          child: Text(
                                            'laxam mandir bharatpur',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.45, -0.6),
                                        child: Text(
                                          'Tasty Fresh',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.01, 0.35),
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
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.43, 0.41),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              setState(() => _model
                                                  .ratingBarValue6 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating:
                                              _model.ratingBarValue6 ??= 3,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent3,
                                          itemCount: 5,
                                          itemSize: 18,
                                          glowColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.96, -0.11),
                                        child: Icon(
                                          Icons.favorite_sharp,
                                          color: Color(0xFFCB5E2E),
                                          size: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.31, 0.01),
                                child: Container(
                                  width: 454,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0, 0.33),
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
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.43, 0.34),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              setState(() => _model
                                                  .ratingBarValue7 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating:
                                              _model.ratingBarValue7 ??= 3,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent3,
                                          itemCount: 5,
                                          itemSize: 18,
                                          glowColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(0.95, -0.14),
                                        child: Icon(
                                          Icons.favorite_sharp,
                                          color: Color(0xFFD96330),
                                          size: 24,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.45, -0.6),
                                        child: Text(
                                          'Sai bakers',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.6,
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              -0.23, -0.13),
                                          child: Text(
                                            'laxam mandir bharatpur',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-0.92, -0.2),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/images/pizza.png',
                                            width: 64,
                                            height: 60,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.88, -0.94),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/Italian_Pizza.jpg',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
