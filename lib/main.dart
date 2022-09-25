import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("geo location"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () async {
              await openAppSettings();
            },
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.camera.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "camera",
              )),
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.storage.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "Storage",
              )),
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.calendar.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "calendar",
              )),
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.microphone.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "microphone",
              )),
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.photos.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "Photos",
              )),
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.phone.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "phone",
              )),
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.location.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "location",
              )),
          ElevatedButton(
              onPressed: () async {
                // Position position = await Geolocator.getCurrentPosition();
                PermissionStatus res = await Permission.contacts.request();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("${res}"),
                ));
              },
              child: Text(
                "contacts",
              )),
        ],
      )),
    );
  }
}
