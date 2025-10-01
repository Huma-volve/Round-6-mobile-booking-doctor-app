import 'dart:async';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/features/map/presentation/view/widget/custom_location_button.dart';
import 'package:booking_doctor/features/map/presentation/view/widget/custom_map_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:svg_flutter/svg.dart';

class MapViewBody extends StatefulWidget {
  const MapViewBody({super.key});

  @override
  State<MapViewBody> createState() => _MapViewBodyState();
}

class _MapViewBodyState extends State<MapViewBody> {
  String? mapStyle;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  BitmapDescriptor? icon;
  final CameraPosition cameraPosition = const CameraPosition(
    target: LatLng(30.876679144006953, 30.83290282755096),
    zoom: 14,
  );

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/map.json').then((mapStyle) {
      setState(() {
        this.mapStyle = mapStyle;
      });
    });
    getIcon().then(
      (value) => setState(() {
        icon = value;
      }),
    );
  }

  Set<Marker> markers = {};
  @override
  void dispose() {
    _controller.future.then((value) => value.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          markers: markers,
          onMapCreated: (controller) async {
            _controller.complete(controller);
            if (mapStyle != null) {
              controller.setMapStyle(mapStyle!);
            }
            addMarker(const LatLng(30.876679144006953, 30.83290282755096), '1');
          },
          zoomControlsEnabled: false,
          initialCameraPosition: cameraPosition,
        ),
        const Positioned(top: 50, right: 16, left: 16, child: CustomMapBar()),
        Positioned(
          bottom: 100,
          right: 16,
          child: GestureDetector(
            onTap: moveToPosition,
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(3),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(AppIcons.iconsLocateLocationIcon),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 16,
          right: 16,
          child: CustomLocationButton(onPressed: () {}),
        ),
      ],
    );
  }

  void moveToPosition() async {
    final controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        const CameraPosition(
          target: LatLng(30.04388053900841, 31.234604477683245),
          zoom: 14,
        ),
      ),
    );
  }

  Future<BitmapDescriptor> getIcon() async {
    return await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(48, 48)),
      AppIcons.marker,
    );
  }

  void addMarker(LatLng position, String id) {
    if (icon == null) return;
    setState(() {
      markers.add(
        Marker(markerId: MarkerId(id), position: position, icon: icon!),
      );
    });
  }
}
