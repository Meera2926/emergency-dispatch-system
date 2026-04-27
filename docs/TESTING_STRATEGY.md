# Testing Strategy & Test Suites

## Coverage Matrix
- **Unit Tests (`test/models/`, `test/services/`, `test/utils/`)**:
  - Distance algorithms (Haversine & bearing)
  - Result monad & error handling
  - Offline queue FIFO replay behavior
  - Geocoding cache LRU eviction
  - Low-pass GPS smoothing filter

- **Widget Tests (`test/widgets/`)**:
  - PulseAnimation rendering
  - CountdownProgressRing timer cancel gestures
  - IncidentTimelineStepper step progressions
  - EmergencyTypePicker selection
  - ResponderInfoCard click callbacks

## Executing Tests
```bash
flutter test --reporter expanded
```
