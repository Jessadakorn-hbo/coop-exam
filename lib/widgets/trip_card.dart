import 'package:flutter/material.dart';
import '../models/trip.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Trip ID: ${trip.id}'),
        subtitle: Text('From: ${trip.context.origin} to ${trip.context.destination}'),
      ),
    );
  }
}