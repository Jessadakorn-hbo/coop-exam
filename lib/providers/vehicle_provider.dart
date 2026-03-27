import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fullstackbackup/services/supabase_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/vehicle.dart';

final vehicleProvider = FutureProvider<List<Vehicle>>((ref) async {
  final supabase = SupabaseService(Supabase.instance.client);
  return await supabase.fetchVehicles();
});