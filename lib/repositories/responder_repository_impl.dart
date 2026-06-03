import 'package:emergency_resource_dispatch_system/core/types/result.dart';
import 'package:emergency_resource_dispatch_system/core/errors/failures.dart';
import 'package:emergency_resource_dispatch_system/storage/responder_dao.dart';
import 'responder_repository.dart';

class ResponderRepositoryImpl implements ResponderRepository {
  final ResponderDao dao;

  ResponderRepositoryImpl({required this.dao});

  @override
  Future<Result<List<Map<String, dynamic>>, Failure>> getNearbyAvailable(
    double lat,
    double lng,
    double radiusKm,
  ) async {
    try {
      final list = await dao.getAvailableResponders();
      return Success(list);
    } catch (e) {
      return FailureResult(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Result<bool, Failure>> updateStatus(String responderId, String status) async {
    try {
      final existing = await dao.findById(responderId) ?? {};
      existing['status'] = status;
      await dao.upsertResponder(responderId, existing);
      return const Success(true);
    } catch (e) {
      return FailureResult(ServerFailure(e.toString()));
    }
  }
}
