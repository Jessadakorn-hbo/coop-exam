import 'checkpoint.dart';

class Trip {
  final String id;
  final String vehicleId;
  final String driverId;
  final String status;
  final DateTime timestamps;
  final TripContext context;

  Trip({
    required this.id,
    required this.vehicleId,
    required this.driverId,
    required this.status,
    required this.timestamps,
    required this.context,
  });
}

class TripContext {
  final String origin;
  final String destination;
  final double distanceKm;
  final List<Checkpoint> checkpoints;

  TripContext({
    required this.origin,
    required this.destination,
    required this.distanceKm,
    required this.checkpoints,
  });
}