class Checkpoint {
  final String id;
  final String tripId;
  final int sequence;
  final String status;
  final String location;
  final String purpose;

  Checkpoint({
    required this.id,
    required this.tripId,
    required this.sequence,
    required this.status,
    required this.location,
    required this.purpose,
  });
}