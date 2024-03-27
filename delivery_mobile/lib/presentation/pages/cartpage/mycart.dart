
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/mycart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class CheckoutWidget extends StatefulWidget {
  const CheckoutWidget({
    super.key,
    this.order,
  });

  final String? order;

  @override
  State<CheckoutWidget> createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {
  late CheckoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutModel());
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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_ios,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'My Cart',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(3, 5, 2, 0),
                child: Container(
                  width: 0,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.96, -0.53),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/cheeze_burger.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.3, -0.5),
                        child: Text(
                          'Double cheeze burger',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(0.44, 0.95),
                          child: Text(
                            'Catch up pouche(1).  chili flux (1)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.51, 0.96),
                        child: Text(
                          'Addons:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.53, 0.41),
                        child: Text(
                          '\$120',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.49, -0.06),
                        child: RatingBar.builder(
                          onRatingUpdate: (newValue) =>
                              setState(() => _model.ratingBarValue1 = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          direction: Axis.horizontal,
                          initialRating: _model.ratingBarValue1 ??= 3,
                          unratedColor: FlutterFlowTheme.of(context).alternate,
                          itemCount: 5,
                          itemSize: 16,
                          glowColor: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.95, 0.06),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: const Color(0xFFF0F0F0),
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minusCircle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            incrementIconBuilder: (enabled) => Icon(
                              Icons.add_circle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                            count: _model.countControllerValue1 ??= 0,
                            updateCount: (count) => setState(
                                () => _model.countControllerValue1 = count),
                            stepSize: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(3, 11, 2, 0),
                child: Container(
                  width: 0,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.97, -0.05),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/dave_burger.jpg',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.51, 0.89),
                        child: Text(
                          'Addons:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(0.41, 0.89),
                          child: Text(
                            'Catch up pouche(1).  chili flux (1)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.54, 0.35),
                        child: Text(
                          '\$120',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.49, -0.06),
                        child: RatingBar.builder(
                          onRatingUpdate: (newValue) =>
                              setState(() => _model.ratingBarValue2 = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          direction: Axis.horizontal,
                          initialRating: _model.ratingBarValue2 ??= 3,
                          unratedColor: FlutterFlowTheme.of(context).alternate,
                          itemCount: 5,
                          itemSize: 16,
                          glowColor: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.34, -0.43),
                        child: Text(
                          'Double Dave burger',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.93, -0.15),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: const Color(0xFFF0F0F0),
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minusCircle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            incrementIconBuilder: (enabled) => Icon(
                              Icons.add_circle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                            count: _model.countControllerValue2 ??= 0,
                            updateCount: (count) => setState(
                                () => _model.countControllerValue2 = count),
                            stepSize: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(3, 12, 2, 0),
                child: Container(
                  width: 0,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.94, 0.05),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/dave2.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(1.03, -1.13),
                          child: Text(
                            'Catch up pouche(1).  chili flux (1)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.49, 0.9),
                        child: Text(
                          'Addons:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.53, 0.4),
                        child: Text(
                          '\$120',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.48, 0.02),
                        child: RatingBar.builder(
                          onRatingUpdate: (newValue) =>
                              setState(() => _model.ratingBarValue3 = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          direction: Axis.horizontal,
                          initialRating: _model.ratingBarValue3 ??= 3,
                          unratedColor: FlutterFlowTheme.of(context).alternate,
                          itemCount: 5,
                          itemSize: 16,
                          glowColor: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.32, -0.35),
                        child: Text(
                          'Double Dave burger',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.96, -0.19),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: const Color(0xFFF0F0F0),
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minusCircle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            incrementIconBuilder: (enabled) => Icon(
                              Icons.add_circle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                            count: _model.countControllerValue3 ??= 0,
                            updateCount: (count) => setState(
                                () => _model.countControllerValue3 = count),
                            stepSize: 1,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(0.47, 0.91),
                          child: Text(
                            'Catch up pouche(1).  chili flux (1)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(3, 14, 2, 0),
                child: Container(
                  width: 0,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.97, -0.1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/pizza.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.52, 0.94),
                        child: Text(
                          'Addons:',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.53, 0.36),
                        child: Text(
                          '\$120',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.46, -0.15),
                        child: RatingBar.builder(
                          onRatingUpdate: (newValue) =>
                              setState(() => _model.ratingBarValue4 = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          direction: Axis.horizontal,
                          initialRating: _model.ratingBarValue4 ??= 3,
                          unratedColor: FlutterFlowTheme.of(context).alternate,
                          itemCount: 5,
                          itemSize: 16,
                          glowColor: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.33, -0.56),
                        child: Text(
                          'Double cheeze pizza',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.96, -0.25),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: const Color(0xFFF0F0F0),
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minusCircle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).alternate
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            incrementIconBuilder: (enabled) => Icon(
                              Icons.add_circle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).tertiary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                            count: _model.countControllerValue4 ??= 0,
                            updateCount: (count) => setState(
                                () => _model.countControllerValue4 = count),
                            stepSize: 1,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: const AlignmentDirectional(0.38, 0.94),
                          child: Text(
                            'Catch up pouche(1).  chili flux (1)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 12,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 9, 0, 0),
                child: Container(
                  height: 103,
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.57, -0.51),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            width: 438,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.94, -0.92),
                                  child: Text(
                                    '\$ 1,257.00',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.95, -0.75),
                                  child: Text(
                                    'Item Price',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.95, -0.17),
                                  child: Text(
                                    'Addons',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.96, -0.24),
                                  child: Text(
                                    '(+) \$ 30.00',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 1),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.95, 0),
                      child: Text(
                        'Subtotal',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.92, 0),
                      child: Text(
                        '\$1,287.00',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 233,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.18, 0.8),
                      child: FFButtonWidget(
                        onPressed: () async {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Order kindly wait your order is in pending the restuarant owner will accept it soon',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: const Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              action: SnackBarAction(
                                label: 'order',
                                onPressed: () async {
                                 
                                },
                              ),
                            ),
                          );
                        },
                        text: 'Proceed to Checkout',
                        options: FFButtonOptions(
                          width: 441,
                          height: 57,
                          padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: const Color(0xFFE95210),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
