class Vehicle {
  final String id;
  final String licensePlate;
  final String type;
  final String status;
  final String driverId;
  final VehicleContext context;

  Vehicle({
    required this.id,
    required this.licensePlate,
    required this.type,
    required this.status,
    required this.driverId,
    required this.context,
  });
}

class VehicleContext {
  final String brand;
  final String model;
  final int year;
  final String fuelType;
  final int mileageKm;
  final int lastServiceKm;
  final int nextServiceKm;

  VehicleContext({
    required this.brand,
    required this.model,
    required this.year,
    required this.fuelType,
    required this.mileageKm,
    required this.lastServiceKm,
    required this.nextServiceKm,
  });
}