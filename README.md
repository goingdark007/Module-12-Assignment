# 🧮 Flutter Calculator App

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=Dart&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-blue?style=for-the-badge)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

> A sleek and modern calculator app built with **Flutter**, featuring dynamic **light/dark themes**, a clean UI, and all essential arithmetic operations.

---

## ✨ Features

✅ **Basic Arithmetic** — Addition, Subtraction, Multiplication, Division, and Percentage.  
🌗 **Dynamic Theme Switching** — Toggle between Light 🌞 and Dark 🌙 modes in one tap.  
🧩 **Reusable Custom Buttons** — Built using a modular widget design.  
🎨 **Modern UI** — Minimalistic layout powered by Material Design.  
⚡ **Responsive** — Works seamlessly across devices and orientations.  

---

## 📸 Preview

| ☀️ Light Mode | 🌙 Dark Mode |
|:--------------:|:-------------:|
| Light Mode     | Dark Mode
<img width="100" height="200" alt="Screenshot_20251109_104703" src="https://github.com/user-attachments/assets/ae707e7b-9d92-49c0-875e-a22b62c723e8" /> | <img width="100" height="200" alt="Screenshot_20251109_104737" src="https://github.com/user-attachments/assets/7d94299e-1d69-4bbf-9f94-3fd8fa8c017d" /> |


---

## 🏗️ Project Structure

```
lib/
├── main.dart                 # App entry point and theme management
├── pages/
│   └── calculator_page.dart  # Main calculator UI and logic
└── utilities/
    └── custom_button.dart    # Reusable custom button widget
```

---

## 🧠 Core Logic Overview

### `main.dart`
- Initializes the app with both **light** and **dark** themes.  
- Uses a `StatefulWidget` to manage theme changes dynamically.  
- Launches the `CalculatorApp` widget as the home page.

### `calculator_page.dart`
- Handles user inputs, operations, and calculations.  
- Displays current operation and results in a responsive layout.  
- Uses a grid-like structure of `CustomButton` widgets for all calculator buttons.  
- Supports clearing inputs and chaining operations.

### `custom_button.dart`
- Defines a reusable button component.  
- Takes in:
  - `buttonText` → Label on the button  
  - `buttonColor` → Background color  
  - `onPressed` → Function callback  
- Ensures consistent button design across all rows.

---

## ⚙️ Getting Started

### 🧾 Prerequisites
- Install [Flutter](https://docs.flutter.dev/get-started/install)
- Ensure you have a connected emulator or physical device

### 🧩 Installation Steps

```bash
# 1️⃣ Clone the repository
git clone https://github.com/yourusername/flutter_calculator_app.git

# 2️⃣ Navigate into the project folder
cd flutter_calculator_app

# 3️⃣ Fetch dependencies
flutter pub get

# 4️⃣ Run the app
flutter run
```

---

## 🧰 Dependencies

No external dependencies — this project uses **Flutter’s core Material components** only.  

---

## 👨‍💻 Author

**Md Nazmul Hasan**  
📧 [your.email@example.com](mailto:nhasanr18@example.com)  
💼 [GitHub](https://github.com/goingdark007)  

---

## 📄 License

This project is licensed under the **MIT License**.  
You are free to use, modify, and distribute this project for personal or commercial use.

---

⭐ *If you like this project, consider giving it a star on GitHub! It really helps a lot.*  
🎯 *Made with Flutter and ❤️ by [Nazmul]*
