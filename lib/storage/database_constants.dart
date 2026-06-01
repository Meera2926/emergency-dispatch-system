class DatabaseConstants {
  DatabaseConstants._();

  static const String databaseName = 'erds_local.db';
  static const int databaseVersion = 1;

  static const String tableIncidents = 'incidents';
  static const String tableResponders = 'responders';
  static const String tableAuditLogs = 'audit_logs';
  static const String tableTelemetry = 'telemetry_points';
}
