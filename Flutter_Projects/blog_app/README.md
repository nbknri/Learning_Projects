
# Blog App - Flutter & Clean Architecture

A feature-rich Blog Application built with Flutter, demonstrating the implementation of **Clean Architecture**, **SOLID principles**, and **BLoC** for state management.

## 🚀 Features

* **User Authentication:** Secure Sign Up and Log In using Supabase/Backend.
* **Create Blogs:** Users can write blogs with a title, content, and category.
* **Image Upload:** Integration with storage to upload header images for blogs.
* **Local Persistence:** Uses Hive for local caching of data.
* **Clean Architecture:** Separated into Data, Domain, and Presentation layers for scalability and testability.
* **Responsive UI:** Modern and clean UI design.

## 🛠️ Tech Stack

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** [Dart](https://dart.dev/)
* **State Management:** [Flutter BLoC](https://pub.dev/packages/flutter_bloc)
* **Backend/Database:** [Supabase](https://supabase.com/) (PostgreSQL & Auth)
* **Local Database:** [Hive](https://www.google.com/search?q=https://pub.dev/packages/hive)
* **Dependency Injection:** [Get It](https://pub.dev/packages/get_it)
* **Image Picking:** [Image Picker](https://pub.dev/packages/image_picker)

## 📁 Project Structure

The project follows a feature-first Clean Architecture approach:

```text
lib/
├── core/                  # Shared utilities, themes, and common usecases
│   ├── common/            # Common widgets (Loader, etc.)
│   ├── constants/         # App constants
│   ├── error/             # Failure and Exception handling
│   ├── theme/             # App styling (Dark Mode)
│   └── usecase/           # Base Usecase interface
├── features/              # Modular features
│   ├── auth/              # Authentication Feature
│   │   ├── data/          # Models, Repositories Implementation, Data Sources
│   │   ├── domain/        # Entities, Repositories Interface, Usecases
│   │   └── presentation/  # UI (Pages, Widgets) and BLoC
│   └── blog/              # Blog Feature
│       ├── data/
│       ├── domain/
│       └── presentation/
├── init_dependencies.dart # Dependency Injection Setup
└── main.dart              # Entry point

```

## ⚙️ Getting Started

### Prerequisites

* Flutter SDK installed: [Install Flutter](https://docs.flutter.dev/get-started/install)
* A Supabase account and project set up.

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/nbknri/Learning_Projects.git
cd Flutter_Projects/blog_app

```


2. **Install dependencies:**
```bash
flutter pub get

```


3. **Supabase Setup:**
* Create a new project on [Supabase](https://www.google.com/search?q=https://app.supabase.com/).
* Create a `profiles` table and a `blogs` table.
* Obtain your `SUPABASE_URL` and `SUPABASE_ANON_KEY`.


4. **Environment Configuration:**
Create a `.env` file or initialize your Supabase credentials in `lib/core/secrets/app_secrets.dart` (ensure you don't commit secrets to GitHub):
```dart
class AppSecrets {
  static const supabaseUrl = 'YOUR_SUPABASE_URL';
  static const supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';
}

```


5. **Run the app:**
```bash
flutter run

```



<!-- ## 📸 Screenshots

| Login | Signup | Blog List | Add Blog |
| --- | --- | --- | --- |
| *Add Image* | *Add Image* | *Add Image* | *Add Image* | -->

## 🛡️ Key Principles Applied

* **Clean Architecture:** Decoupling the business logic from the UI and external frameworks.
* **Dependency Injection:** Using `GetIt` to manage service instances.
* **Error Handling:** Using the `Either` type from the `fpdart` package for functional error handling.
* **Repository Pattern:** Abstracting data sources to ensure the domain layer remains agnostic of the backend.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

---

**Maintained by:** [NBKNRI](https://github.com/nbknri)