#  Spotify Clone - Flutter Music Streaming App

<img width="480" height="671" alt="image" src="https://github.com/user-attachments/assets/9a8d046d-c99e-4fa3-9ce2-0e4d62cbf19d" />  <img width="822" height="362" alt="image" src="https://github.com/user-attachments/assets/280cb1a5-a409-4ead-ab11-bd723babb6ef" />


---
A full stack, cross platform music streaming application modeled after Spotify, providing users with a seamless and engaging audio entertainment experience. Built with a strong emphasis on scalable design patterns and robust error handling.

##  Features

* **User Authentication:** Secure Sign Up and Sign In using Firebase Auth.
* **Music Streaming:** Persistent real-time audio playback using `just_audio`.
* **Dynamic Theming:** Seamless switching between Dark and Light modes.
* **Media Browsing:** Explore artists, albums, and playlists fetched directly from Firebase Firestore and Storage.
* **Responsive UI:** Pixel-perfect, adaptive user interface with reusable custom widgets.

##  Tech Stack & Architecture

This project is built using industry-standard tools and architectural patterns to ensure scalability, maintainability, and clean code.

* **Framework:** Flutter / Dart
* **Architecture:** Clean Architecture (Feature-First approach)
* **State Management:** Cubit (`flutter_bloc`)
* **Dependency Injection:** `get_it`
* **Error Handling & Functional Programming:** `dartz` (Either, Failures)
* **Backend as a Service (BaaS):** Firebase (Auth, Cloud Firestore, Cloud Storage)
* **Audio Engine:** `just_audio`

## Architecture Overview

The application strictly follows **Clean Architecture** principles, divided into feature-based folders. Each feature (e.g., `auth`, `home`, `player`) is isolated and separated into three main layers:

1. **Domain Layer:** The core business logic, containing `Entities`, `Repositories` (Interfaces), and `UseCases`. It is completely independent of any external libraries or Flutter SDK.
2. **Data Layer:** Responsible for data retrieval and manipulation. It contains `Models`, `Data Sources` (Firebase API calls), and `Repository Implementations`.
3. **Presentation Layer:** The UI and State Management. It contains `Screens`, `Widgets`, and `Cubits` that interact with the UseCases.

```text
lib/
 ├── core/                  # Core configurations, constants, DI, and themes
 └── features/              # Feature-first modules
      └── auth/
           ├── data/        # Models, RemoteDataSources, RepoImpls
           ├── domain/      # Entities, Repositories, UseCases
           └── presentation/# Screens, Widgets, Cubit
