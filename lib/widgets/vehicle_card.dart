import 'package:flutter/material.dart';
import '../models/vehicle.dart';

class VehicleCard extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleCard({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(vehicle.licensePlate),
        subtitle: Text('Type: ${vehicle.type}, Status: ${vehicle.status}'),
        trailing: Text(vehicle.context.mileageKm.toString()),
      ),
    );
  }
}