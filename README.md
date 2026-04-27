# SafeCall SOS - Emergency Resource Dispatch System 🚨

[![Flutter CI](https://github.com/Meera2926/emergency-dispatch-system/actions/workflows/flutter_ci.yml/badge.svg)](https://github.com/Meera2926/emergency-dispatch-system/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)](https://dart.dev)

A mission-critical Flutter mobile application designed to instantly connect citizens in distress with emergency first responders (medical, police, fire) via real-time GPS telemetry, nearest-neighbor dispatch heuristics, and interactive live tracking.

---

## 🌟 Key Features

- **🚨 SOS Hold-to-Trigger**: 3-second safety latch with CustomPainter glowing pulse ring to eliminate accidental triggers.
- **📍 Real-time Tracking & Telemetry**: Live map interface with Zomato/Uber-style delivery tracking, route polyline decoding, and ETA countdown.
- **⚡ Nearest Responder Dispatch Heuristic**: Automated allocation of nearest available ambulance, patrol car, or fire engine.
- **📴 Offline Resilience & SMS Fallback**: Queued telemetry sync and automated SMS dispatch with exact GPS coordinates when offline.
- **🌐 Multilingual Support**: Built-in support for English, Hindi (हिंदी), and Tamil (தமிழ்).
- **🔋 Battery-Aware GPS Throttling**: Dynamic location polling frequencies to conserve device power during long-duration emergencies.

---

## 📱 Architecture & Flow

```mermaid
sequenceDiagram
    autonumber
    actor Victim as Citizen (App)
    participant Dispatcher as Dispatch Engine
    actor Responder as Emergency Unit
    
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

## 📚 Documentation
- [System Architecture](docs/ARCHITECTURE.md)
- [REST API Specification](docs/API_SPECIFICATION.md)
- [Dispatch Algorithm & Heuristics](docs/DISPATCH_ALGORITHM.md)
- [Setup & Configuration Guide](docs/SETUP_GUIDE.md)
- [Testing Strategy](docs/TESTING_STRATEGY.md)

---

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
