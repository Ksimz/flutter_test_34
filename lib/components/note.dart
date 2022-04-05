import 'package:flutter/material.dart';

Widget Note(String title, String notes) {
  return ListTile(
    title: Text(title),
    leading: const Icon(Icons.notes),
    subtitle: Text(notes),
  );
}
