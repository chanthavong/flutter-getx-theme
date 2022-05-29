import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';

import 'user_map_controller.dart';

class UserMapView extends GetView<UserMapController> {
  const UserMapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetLocationPage();
  }
}

class GetLocationPage extends StatefulWidget {
  @override
  _GetLocationPageState createState() => _GetLocationPageState();
}

class _GetLocationPageState extends State<GetLocationPage> {
  var location = new Location();

  late Map<String, double> userLocation;

  var currentLocation = LatLng(0, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(17.974632, 102.623007),
          zoom: 13.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            attributionBuilder: (_) {
              return const Text("© OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: currentLocation,
                builder: (ctx) => Container(
                  child: IconButton(
                    icon: Icon(Icons.location_on),
                    color: Colors.red,
                    iconSize: 45.0,
                    onPressed: () {
                      // Get.toNamed('/user-map');
                      print('x');
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getLocation().then((value) {
            print(value);
          });
        },
        child: Icon(Icons.location_on),
      ),
    );
  }

  Future<LatLng> _getLocation() async {
    var c = LatLng;
    try {
      var current = (await location.getLocation());
      currentLocation = LatLng(current.latitude ?? 0, current.longitude ?? 0);
      setState(() {});
    } catch (e) {
      print(e);
    }
    return currentLocation;
  }
}
