import 'package:flutter/material.dart';

Widget aadButton(VoidCallback onTap, Color color, String text) {
  return Expanded(
    child: MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
      color: color,
      height: 75,
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(fontSize: 36, fontWeight: .bold, color: Colors.white),
      ),
    ),
  );
}
