import 'package:emergency_resource_dispatch_system/core/types/result.dart';
import 'package:emergency_resource_dispatch_system/core/errors/failures.dart';

abstract class IncidentRepository {
  Future<Result<String, Failure>> createIncident(Map<String, dynamic> data);
  Future<Result<Map<String, dynamic>, Failure>> fetchIncident(String id);
  Future<Result<bool, Failure>> cancelIncident(String id, String reason);
}
