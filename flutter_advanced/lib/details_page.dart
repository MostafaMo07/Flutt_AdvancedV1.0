import 'dart:ui';

import 'package:flutter/material.dart';

class PlaceDetailsPage extends StatelessWidget {
  _buildSettingElement(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 22,
        ),
        Text(text.toUpperCase())
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPlaceImage(),
        _buildPlaceDescriptopnAndRating(),
        _buildUserActions()
      ],
    );
  }

  _buildPlaceImage() {
    return Image.network(
        "https://blog.blackcurve.com/hs-fs/hubfs/New_BlackCurve_Images/The%20Future%20of%20Travel%20Pricing.jpg?width=3000&name=The%20Future%20of%20Travel%20Pricing.jpg");
  }

  _buildPlaceDescriptopnAndRating() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Main Text Top",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(
                  "sub Text",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )
              ],
            )),
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text("41")
          ],
        ),
      ),
    );
  }

  _buildUserActions() {
    Widget share = _buildSettingElement(Icons.share, "Share");
    Widget message = _buildSettingElement(Icons.message, "Message");
    Widget settings = _buildSettingElement(Icons.memory, "Memory");
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [share, message, settings],
    );
  }
}
