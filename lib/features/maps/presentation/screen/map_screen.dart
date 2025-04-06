import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  final LatLng center =
      const LatLng(23.8859, 45.0792); // Center on Saudi Arabia

  final List<Map<String, dynamic>> locations = [
    {
      'name': 'الاحساء',
      'latLng': LatLng(25.383, 49.595),
      'image': 'assets/images/first_image.png',
    },
    {
      'name': 'الرياض',
      'latLng': LatLng(24.7136, 46.6753),
      'image': 'assets/images/sec_image.png',
    },
    {
      'name': 'الطائف',
      'latLng': LatLng(21.2854, 40.4267),
      'image': 'assets/images/third_image.png',
    },
  ];

  Set<Marker> getMarkers() {
    return locations.map((loc) {
      return Marker(
        markerId: MarkerId(loc['name']),
        position: loc['latLng'],
        icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange), // Or use custom marker later
        onTap: () {},
      );
    }).toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map
          GoogleMap(
            onMapCreated: (controller) {
              mapController = controller;
            },
            initialCameraPosition: CameraPosition(
              target: center,
              zoom: 6,
            ),
            markers: getMarkers(),
            zoomControlsEnabled: false,
          ),

          // Bottom Sheet
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("اكتشف الوجهات",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: locations.length,
                      separatorBuilder: (context, _) =>
                          const SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        final loc = locations[index];
                        return GestureDetector(
                          onTap: () {
                            mapController.animateCamera(
                              CameraUpdate.newLatLngZoom(loc['latLng'], 10),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 120,
                              color: Colors.grey[200],
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(loc['image'], fit: BoxFit.cover),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      color: Colors.black54,
                                      child: Text(
                                        loc['name'],
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
