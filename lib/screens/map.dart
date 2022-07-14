import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng startLocation = const LatLng(37.6324657, 127.0776803);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final List<Marker> _markers = [];

  @override
  void initState() {
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("1"),
        draggable: true,
        onTap: () => {},
        position: LatLng(37.6324657, 127.0776803)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("google map"),
        backgroundColor: Colors.transparent,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: Set.from(_markers),
        onMapCreated: _onMapCreated,
        initialCameraPosition:
            CameraPosition(target: startLocation, zoom: 17.5),
      ),
    );
  }
}
