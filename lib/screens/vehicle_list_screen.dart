import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fullstackbackup/providers/vehicle_provider.dart';
import 'package:fullstackbackup/widgets/vehicle_card.dart';

class VehicleListScreen extends ConsumerWidget {
  const VehicleListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehicles = ref.watch(vehicleProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Vehicle List')),
      body: vehicles.when(
        data: (vehicleList) => vehicleList.isEmpty
            ? Center(child: Text('No vehicles found'))
            : ListView.builder(
                itemCount: vehicleList.length,
                itemBuilder: (context, index) {
                  return VehicleCard(vehicle: vehicleList[index]);
                },
              ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
