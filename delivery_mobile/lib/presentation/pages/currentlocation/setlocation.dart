
import 'package:delivery_mobile/flutterflow_ui.dart';
import 'package:delivery_mobile/models/model.dart';
import 'package:flutter/material.dart';



class SetlocationWidget extends StatefulWidget {
  const SetlocationWidget({super.key});

  @override
  State<SetlocationWidget> createState() => _SetlocationWidgetState();
}

class _SetlocationWidgetState extends State<SetlocationWidget> {
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
        backgroundColor: const Color(0xFFF6F7F8),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF6F8FA),
          automaticallyImplyLeading: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24,
          ),
          title: Text(
            'Set Location',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
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
                alignment: const AlignmentDirectional(-0.08, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/cardboard-box.jpg',
                    width: 222,
                    height: 163,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: Align(
                  alignment: const AlignmentDirectional(-0.07, 0.31),
                  child: Text(
                    'No saved address found',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, 0.5),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Use Current Location',
                  icon: const Icon(
                    Icons.my_location,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 383,
                    height: 50,
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: const Color(0xFFE05F27),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
              Align(
                alignment: const AlignmentDirectional(0.02, 0.68),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Set From Map',
                  icon: const Icon(
                    Icons.map,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 382,
                    height: 50,
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: const Color(0xFFF6F8FA),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFFE0642F),
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 3,
                    borderSide: const BorderSide(
                      color: Color(0xFFE05D24),
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
    );
  }
}
