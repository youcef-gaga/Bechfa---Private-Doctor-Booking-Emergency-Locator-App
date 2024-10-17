import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LocateWidget extends StatefulWidget {
  const LocateWidget({
    Key key,
    this.doctorLocate,
  }) : super(key: key);

  final DocumentReference doctorLocate;

  @override
  _LocateWidgetState createState() => _LocateWidgetState();
}

class _LocateWidgetState extends State<LocateWidget> {
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.doctorLocate),
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
          children: [
            Expanded(
              child: FlutterFlowGoogleMap(
                controller: googleMapsController,
                onCameraIdle: (latLng) =>
                    setState(() => googleMapsCenter = latLng),
                initialLocation: googleMapsCenter ??=
                    columnUsersRecord.locationDoctor,
                markers: [
                  if (columnUsersRecord != null)
                    FlutterFlowMarker(
                      columnUsersRecord.reference.path,
                      columnUsersRecord.locationDoctor,
                    ),
                ],
                markerColor: GoogleMarkerColor.violet,
                mapType: MapType.normal,
                style: GoogleMapStyle.aubergine,
                initialZoom: 14,
                allowInteraction: true,
                allowZoom: true,
                showZoomControls: true,
                showLocation: true,
                showCompass: true,
                showMapToolbar: false,
                showTraffic: true,
                centerMapOnMarkerTap: true,
              ),
            ),
          ],
        );
      },
    );
  }
}
