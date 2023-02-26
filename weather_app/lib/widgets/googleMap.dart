import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapApi extends StatefulWidget {
  double latt;
  double lngg;
  GoogleMapApi({
    Key? key,
    required this.latt,
    required this.lngg,
  }) : super(key: key);

  @override
  State<GoogleMapApi> createState() => _GoogleMapApiState();
}

class _GoogleMapApiState extends State<GoogleMapApi> {
  Completer<GoogleMapController> _controller = Completer();

  //  CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(latt,lngg),
  //   zoom: 25,
  // );

  CameraPosition _kGooglePlex(double one, double two) {
    return CameraPosition(target: LatLng(one, two), zoom: 9);
  }

  // static final CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    List<Marker> _markers = <Marker>[];
    _markers.add(Marker(
        markerId: MarkerId('Here'),
        position: LatLng(widget.latt, widget.lngg),
        infoWindow: InfoWindow(title: "You are here!")));
    return ClipRRect(
      borderRadius: BorderRadius.circular(33),
      child: GoogleMap(
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        // markers: Set<Marker>.of(_markers),
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex(widget.latt, widget.lngg),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}
