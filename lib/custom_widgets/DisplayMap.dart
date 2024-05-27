import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';


import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';


class DisplayMap extends StatefulWidget {
  final VoidCallback onMarkerPressed;

  const DisplayMap({super.key, required this.onMarkerPressed,});

  @override
  State<DisplayMap> createState() => _DisplayMapState();
}

class _DisplayMapState extends State<DisplayMap> {

  LatLng? currentLocation;


  Map<String, dynamic> selectedMarker = {};
  bool showPanel = false;




  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }


  void _getUserLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentLocation = LatLng(position.latitude, position.longitude);
    });
  }


  @override
  Widget build(BuildContext context) {


    return Center(
        child: Container(
            child: Column(
              children: [
                Flexible(
                  child: currentLocation != null
                      ?FlutterMap(
                    options: MapOptions(
                      initialCenter: currentLocation??const LatLng(0,0),
                      initialZoom: 15,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.app',
                      ),

                      // MarkerLayer(
                      //   rotate: true,
                      //   markers: ghanaTouristSites.map((ghanaTouristSite) {
                      //
                      //     return Marker(
                      //       point: LatLng(ghanaTouristSite["latitude"]??0, ghanaTouristSite["longitude"]??0),
                      //       width: 80,
                      //       height: 80,
                      //       child: ghanaTouristSite["name"].isEmpty
                      //           ?Image.asset(
                      //
                      //         "assets/images/current_location_icon.png",
                      //         // color: Theme.of(context).primaryColor,
                      //       )
                      //           : GestureDetector(
                      //         onTap: widget.onMarkerPressed,
                      //         // onTap: () {
                      //         //   selectedMarker = ghanaTouristSite;
                      //         //   setState(() {
                      //         //     showPanel = true;
                      //         //   });
                      //         // },
                      //         child: Image.asset(
                      //           "assets/images/tourist_icon.png",
                      //           // color: Theme.of(context).primaryColor,
                      //         ),
                      //       ),
                      //
                      //     );
                      //
                      //   }).toList(),
                      // )
                    ],
                  ): Center(child: CircularProgressIndicator()),
                )
              ],
            )
        )
    );
  }
}
