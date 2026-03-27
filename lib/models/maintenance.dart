class Maintenance {
  final String id;
  final String vehicleId;
  final String status;
  final DateTime scheduledAt;
  final String serviceDetails;

  Maintenance({
    required this.id,
    required this.vehicleId,
    required this.status,
    required this.scheduledAt,
    required this.serviceDetails,
  });
}