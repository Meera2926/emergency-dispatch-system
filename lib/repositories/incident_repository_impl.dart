import 'package:emergency_resource_dispatch_system/core/types/result.dart';
import 'package:emergency_resource_dispatch_system/core/errors/failures.dart';
import 'package:emergency_resource_dispatch_system/storage/incident_dao.dart';
import 'incident_repository.dart';

class IncidentRepositoryImpl implements IncidentRepository {
  final IncidentDao dao;

  IncidentRepositoryImpl({required this.dao});

  @override
  Future<Result<String, Failure>> createIncident(Map<String, dynamic> data) async {
    try {
      final id = data['id'] ?? 'INC-${DateTime.now().millisecondsSinceEpoch}';
      data['id'] = id;
      await dao.insertIncident(data);
      return Success(id as String);
    } catch (e) {
      return FailureResult(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Result<Map<String, dynamic>, Failure>> fetchIncident(String id) async {
    try {
      final incident = await dao.getIncidentById(id);
      if (incident == null) {
        return const FailureResult(CacheFailure('Incident not found in local cache'));
      }
      return Success(incident);
    } catch (e) {
      return FailureResult(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Result<bool, Failure>> cancelIncident(String id, String reason) async {
    try {
      await dao.deleteIncident(id);
      return const Success(true);
    } catch (e) {
      return FailureResult(ServerFailure(e.toString()));
    }
  }
}
