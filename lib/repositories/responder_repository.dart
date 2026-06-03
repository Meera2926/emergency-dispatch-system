import 'package:emergency_resource_dispatch_system/core/types/result.dart';
import 'package:emergency_resource_dispatch_system/core/errors/failures.dart';

abstract class ResponderRepository {
  Future<Result<List<Map<String, dynamic>>, Failure>> getNearbyAvailable(double lat, double lng, double radiusKm);
  Future<Result<bool, Failure>> updateStatus(String responderId, String status);
}
