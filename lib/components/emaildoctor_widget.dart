import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmaildoctorWidget extends StatefulWidget {
  const EmaildoctorWidget({
    Key key,
    this.emaildoctor,
  }) : super(key: key);

  final UsersRecord emaildoctor;

  @override
  _EmaildoctorWidgetState createState() => _EmaildoctorWidgetState();
}

class _EmaildoctorWidgetState extends State<EmaildoctorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: AutoSizeText(
          widget.emaildoctor.email,
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Lexend Deca',
                color: FlutterFlowTheme.of(context).primaryColor,
                fontSize: 24,
              ),
        ),
      ),
    );
  }
}
