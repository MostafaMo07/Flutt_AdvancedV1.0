import 'package:flutter/material.dart';
import 'package:flutter_advanced/details_page.dart';
import 'package:flutter_advanced/place_details_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  PlaceDetails placeDetails;
  @override
  Widget build(BuildContext context) {
    placeDetails = PlaceDetails();
    placeDetails.name = "Ciro air Port";
    placeDetails.imageUrl =
        "https://blog.blackcurve.com/hs-fs/hubfs/New_BlackCurve_Images/The%20Future%20of%20Travel%20Pricing.jpg?width=3000&name=The%20Future%20of%20Travel%20Pricing.jpg";
    placeDetails.stars = 54;
    placeDetails.city = "Cairo";
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: PlaceDetailsPage(placeDetails)),
      ),
    );
  }
}
