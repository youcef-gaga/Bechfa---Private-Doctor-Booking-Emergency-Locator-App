import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RateWidget extends StatefulWidget {
  const RateWidget({
    Key key,
    this.ratedoctor,
  }) : super(key: key);

  final DocumentReference ratedoctor;

  @override
  _RateWidgetState createState() => _RateWidgetState();
}

class _RateWidgetState extends State<RateWidget> {
  double ratingBarValue;

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
        child: StreamBuilder<UsersRecord>(
          stream: UsersRecord.getDocument(widget.ratedoctor),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitDoubleBounce(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 50,
                  ),
                ),
              );
            }
            final columnUsersRecord = snapshot.data;
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Evaluer ce medecin',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                ),
                RatingBar.builder(
                  onRatingUpdate: (newValue) async {
                    setState(() => ratingBarValue = newValue);

                    final usersUpdateData = createUsersRecordData(
                      grade: ratingBarValue,
                    );
                    await columnUsersRecord.reference.update(usersUpdateData);
                    Navigator.pop(context);
                  },
                  itemBuilder: (context, index) => Icon(
                    Icons.star_rounded,
                    color: Color(0xFFCDDC39),
                  ),
                  direction: Axis.horizontal,
                  initialRating: ratingBarValue ??= columnUsersRecord.grade,
                  unratedColor: Color(0xFF9E9E9E),
                  itemCount: 5,
                  itemSize: 40,
                  glowColor: Color(0xFFCDDC39),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
