import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/vehicle.dart';

class SupabaseService {
  final SupabaseClient client;

  SupabaseService(this.client);

  Future<List<Vehicle>> fetchVehicles() async {
    final response = await client
        .from('vehicles')
        .select()
        .execute();
    if (response.error != null) throw response.error!;
    return (response.data as List).map((item) => Vehicle(
      id: item['id'],
      licensePlate: item['license_plate'],
      type: item['type'],
      status: item['status'],
      driverId: item['driver_id'],
      context: VehicleContext(
        brand: item['context']['brand'],
        model: item['context']['model'],
        year: item['context']['year'],
        fuelType: item['context']['fuel_type'],
        mileageKm: item['context']['mileage_km'],
        lastServiceKm: item['context']['last_service_km'],
        nextServiceKm: item['context']['next_service_km'],
      ),
    )).toList();
  }
}