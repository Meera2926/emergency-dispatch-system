# ERDS Security Architecture & Threat Model

## Data Protection Standards
1. **Transport Security**: TLS 1.3 with SHA-256 certificate pinning on all endpoints.
2. **Location Privacy**: Coordinate fuzzing/anonymization for non-active historical telemetry.
3. **Local Encryption**: Encrypted SQLite storage with hardware-backed Keystore / Keychain master keys.
4. **OWASP Mobile Top 10 Compliance**: Clean static analysis with CodeQL.
