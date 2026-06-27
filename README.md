# SafeCall SOS - Emergency Resource Dispatch System 🚨

[![Flutter CI](https://github.com/Meera2926/emergency-dispatch-system/actions/workflows/flutter_ci.yml/badge.svg)](https://github.com/Meera2926/emergency-dispatch-system/actions)
[![Version](https://img.shields.io/badge/version-1.2.0-blue.svg)](CHANGELOG.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)](https://flutter.dev)

A mission-critical Flutter mobile application designed to instantly connect citizens in distress with emergency first responders (medical, police, fire) via real-time GPS telemetry, nearest-neighbor dispatch heuristics, dynamic geofencing, and interactive live tracking.

---

## 🌟 Key Features

- **🚨 SOS Hold-to-Trigger**: 3-second safety latch with CustomPainter glowing pulse ring to eliminate accidental triggers.
- **📍 Real-time Tracking & Telemetry**: Live map interface with Zomato/Uber-style delivery tracking, route polyline decoding, and ETA countdown.
- **⚡ Nearest Responder Dispatch Heuristic**: Automated allocation of nearest available ambulance, patrol car, or fire engine.
- **🏥 Hospital Bed Capacity & Trauma Routing**: Dynamic hospital selector routing critical patients to nearest facility with available ICU beds.
- **🛑 Hazard Geofencing**: 2D ray-casting polygon boundary warnings around active wildfire, gas leak, and flood disaster perimeters.
- **🫀 First-Aid & 110 BPM CPR Metronome**: Interactive audio-visual chest compression pacer following AHA resuscitation guidelines.
- **📴 Offline Resilience & SMS Fallback**: Encrypted SQLite local cache, queued telemetry sync, and automated SMS dispatch with exact GPS coordinates.
- **🌐 Multilingual & Accessible**: Full English, Hindi (हिंदी), and Tamil (தமிழ்) localization, TalkBack semantics, and high-contrast dark theme.

---

## 📱 Architecture & Data Flow

```mermaid
sequenceDiagram
    autonumber
    actor Victim as Citizen (App)
    participant Dispatcher as Dispatch Engine
    actor Responder as Emergency Unit
    participant Hospital as Trauma Center
    
    Victim->>Victim: Hold SOS for 3 seconds
    Victim->>Dispatcher: POST /api/v1/emergency/trigger (GPS Coordinates)
    Dispatcher->>Dispatcher: Nearest-responder Haversine match
    Dispatcher->>Responder: Alert broadcast & push notification
    Responder->>Dispatcher: Acknowledge & accept mission
    Dispatcher->>Victim: Responder details, vehicle plate, live ETA
    loop Every 3 seconds
        Responder->>Dispatcher: Live GPS telemetry update
        Dispatcher->>Victim: Update marker & route polyline
    end
    Dispatcher->>Hospital: Reserve ICU bed for incoming patient
    Responder->>Victim: Arrival on scene & incident resolution
```

---

## 🚀 Getting Started

```bash
# 1. Clone repository
git clone https://github.com/Meera2926/emergency-dispatch-system.git

# 2. Install packages
flutter pub get

# 3. Run test suites
flutter test

# 4. Launch application
flutter run
```

---

## 📚 Technical Documentation
- [System Architecture](docs/ARCHITECTURE.md)
- [REST API Specification](docs/API_SPECIFICATION.md)
- [Dispatch Algorithm & Heuristics](docs/DISPATCH_ALGORITHM.md)
- [Local Storage & SQLite Schema](docs/DATABASE_SCHEMA.md)
- [Geofencing & START Triage](docs/GEOFENCING_AND_TRIAGE.md)
- [Performance Benchmarks](docs/PERFORMANCE_BENCHMARKS.md)
- [Security Audit & Threat Model](docs/SECURITY_AUDIT.md)
- [Release Changelog](CHANGELOG.md)

---

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
