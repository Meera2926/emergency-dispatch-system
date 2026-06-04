class SyncMetadata {
  final String recordId;
  final bool isSynced;
  final DateTime lastAttempt;
  final int retryAttempts;

  const SyncMetadata({
    required this.recordId,
    required this.isSynced,
    required this.lastAttempt,
    this.retryAttempts = 0,
  });

  SyncMetadata copyWith({
    bool? isSynced,
    DateTime? lastAttempt,
    int? retryAttempts,
  }) {
    return SyncMetadata(
      recordId: recordId,
      isSynced: isSynced ?? this.isSynced,
      lastAttempt: lastAttempt ?? this.lastAttempt,
      retryAttempts: retryAttempts ?? this.retryAttempts,
    );
  }
}
