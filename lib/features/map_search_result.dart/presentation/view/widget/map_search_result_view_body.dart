import 'dart:async';
import 'package:booking_doctor/core/constants/app_icons.dart';
import 'package:booking_doctor/features/map_search_result.dart/presentation/view/widget/custom_clinic.dart';
import 'package:booking_doctor/features/map_search_result.dart/presentation/view/widget/custom_map_result_arrow_back.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSearchResultViewBody extends StatefulWidget {
  const MapSearchResultViewBody({super.key});

  @override
  State<MapSearchResultViewBody> createState() =>
      _MapSearchResultViewBodyState();
}

class _MapSearchResultViewBodyState extends State<MapSearchResultViewBody> {
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
        Positioned(
          top: 50,
          left: 16,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const CustomMapResultArrowBack(),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          left: 16,
          right: 16,
          top: MediaQuery.sizeOf(context).height * .7,
          child: ListView.builder(
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: 24),
              child: CustomClinic(),
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
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
