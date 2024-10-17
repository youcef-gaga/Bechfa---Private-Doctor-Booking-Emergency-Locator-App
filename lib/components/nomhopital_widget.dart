import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class NomhopitalWidget extends StatefulWidget {
  const NomhopitalWidget({
    Key key,
    this.nomhopital,
  }) : super(key: key);

  final MapRecord nomhopital;

  @override
  _NomhopitalWidgetState createState() => _NomhopitalWidgetState();
}

class _NomhopitalWidgetState extends State<NomhopitalWidget> {
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
        child: InkWell(
          onTap: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: NomhopitalWidget(
                      nomhopital: widget.nomhopital,
                    ),
                  ),
                );
              },
            );
          },
          child: AutoSizeText(
            widget.nomhopital.nomHopital,
            style: FlutterFlowTheme.of(context).title1.override(
                  fontFamily: 'Lexend Deca',
                  color: FlutterFlowTheme.of(context).primaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
          ),
        ),
      ),
    );
  }
}
