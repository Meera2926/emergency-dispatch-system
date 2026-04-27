# Emergency Resource Dispatch System - REST API Specification

## 1. Trigger Emergency
- **Endpoint**: `POST /api/v1/emergency/trigger`
- **Request Body**:
```json
{
  "victimId": "vic-9921",
  "emergencyType": "medical",
  "severity": "critical",
  "latitude": 12.9716,
  "longitude": 77.5946,
  "timestamp": "2026-04-27T10:00:00Z"
}
```
- **Response** (200 OK):
```json
{
  "emergencyId": "EM-2026-4412",
  "status": "dispatched",
  "assignedResponder": {
    "id": "R-101",
    "name": "Dr. Ramesh (Apollo Ambulance)",
    "vehiclePlate": "KA-01-E-9900",
    "etaMinutes": 5.2
  }
}
```

## 2. Telemetry Polling / WebSocket
- **Endpoint**: `GET /api/v1/emergency/{id}/tracking`
- Returns live latitude, longitude, and route waypoints for the assigned responder unit.
