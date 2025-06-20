# Birthdays - SwiftUI & SwiftData Tutorial App 🎉

A SwiftUI application built following Apple's official "Save Data" tutorial from the **Develop in Swift** curriculum. This app uses SwiftData for modern iOS data persistence, helping users track friends' birthdays in a clean, intuitive interface.

## 📋 Table of Contents

- [About](#about)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Learning Objectives](#learning-objectives)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Learning Resources](#learning-resources)
- [Key Code Concepts](#key-code-concepts)
- [Next Steps](#next-steps)
- [Contact](#contact)
- [License](#license)

---

<center>
 
## About 🏆

This project is part of my **SwiftUI-Tutorials** repository and is named **Birthdays**. It demonstrates how to build a real-world iOS app with SwiftUI and SwiftData, focusing on tracking and managing friends' birthdays. The app showcases modern development practices, robust data modeling, and a polished user experience.

---

## Features ✨

- **🎂 Birthday Tracking**: Add and manage friends' birthdays with ease
- **📅 Date Management**: Intuitive date picker for selecting birthdays using `DatePicker` and `Calendar`
- **💾 Data Persistence**: Automatic data saving using SwiftData's `@Model` classes
- **🔍 Smart Queries**: Dynamic data fetching with `@Query` property wrapper
- **🎨 Modern UI**: Clean SwiftUI interface with proper layout using `.safeAreaInset`
- **🎯 Birthday Indicators**: Visual indicators for today's birthdays with cake icons
- **📱 Context Menu**: Long-press actions for editing and deleting friends
- **🔄 Real-time Updates**: Live UI updates when underlying data changes

---

## Technologies Used 🛠️

- **SwiftUI**: Modern declarative UI framework for building native iOS interfaces
- **SwiftData**: Apple's latest data persistence framework with `@Model` macro support
- **Swift**: Primary programming language for iOS development
- **Xcode**: Apple's integrated development environment

### Key SwiftData Components

- `@Model` classes for data modeling
- `@Query` for fetching and displaying data
- `@Environment(\.modelContext)` for database operations
- Automatic data persistence and synchronization

---

## Getting Started 🚀

### Prerequisites

- **macOS with Xcode 15.0 or later**
- **iOS 17.0+ target deployment**
- **Basic knowledge of Swift and SwiftUI**

### Installation

1. **Clone the repository:**
 ```
git clone https://github.com/your-username/SwiftUI-Tutorials.git
cd SwiftUI-Tutorials/Birthdays
```
2. **Open in Xcode:**

   
4. **Build and Run:**
 ```
- Select your target device or simulator
- Press `Product -> Run` to build and run the app
```
---

## Learning Objectives 📚

This tutorial project demonstrates mastery of several key iOS development concepts:

### Data Modeling & Persistence

- **Creating Swift structures** to represent real-world concepts
- **Converting structures to SwiftData models** using `@Model` macro
- **Understanding data persistence** vs. temporary storage

### Date Handling

- **Working with `Date`, `DatePicker`, and `Calendar` APIs**
- **Formatting dates** for display in Text views
- **Calculating date relationships** and comparisons

### SwiftUI Integration

- **Using `@Query` to populate interfaces** with persistent data
- **Implementing `@Environment`** to access model context
- **Positioning content with `.safeAreaInset`** for better layouts

### Modern App Architecture

- **Separating data models from view logic**
- **Implementing CRUD operations** (Create, Read, Update, Delete)
- **Understanding the relationship between SwiftData and Core Data**

---

## Project Structure 🗂️

```
SwiftUI-Tutorials/
└── Birthdays/
├── Models/
│ └── Friend.swift # SwiftData model for friend data
├── Views/
│ └── ContentView.swift # Main list view
├── App/
│ └── BirthdaysApp.swift # App entry point with model container
└── Resources/
└── Assets.xcassets # App icons and colors
```

---

## Screenshots 📷

![Birthday App Screenshot](https://github.com/divyadeepmishra/SwiftUI-Tutorials/blob/main/Birthdays/Images/Screenshot%202025-06-20%20at%2021.55.45.png)
![Birthday App Screenshot](https://github.com/divyadeepmishra/SwiftUI-Tutorials/blob/main/Birthdays/Images/Screenshot%202025-06-20%20at%2021.55.54.png)
![Birthday App Screenshot](https://github.com/divyadeepmishra/SwiftUI-Tutorials/blob/main/Birthdays/Images/Screenshot%202025-06-20%20at%2021.56.05.png)
![Birthday App Screenshot](https://github.com/divyadeepmishra/SwiftUI-Tutorials/blob/main/Birthdays/Images/Screenshot%202025-06-20%20at%2021.57.33.png)
![Birthday App Screenshot](https://github.com/divyadeepmishra/SwiftUI-Tutorials/blob/main/Birthdays/Images/Screenshot%202025-06-20%20at%2021.57.52.png)

---

## Learning Resources 📖

This project was built following Apple's official documentation and tutorials:

- **[Apple's Save Data Tutorial](https://developer.apple.com/tutorials/develop-in-swift/save-data)**
- **[Develop in Swift Tutorials](https://developer.apple.com/tutorials/develop-in-swift/)**
- **[SwiftData Documentation](https://developer.apple.com/xcode/swiftdata/)**
- **[SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui/)**


---

## Key Code Concepts 💻

### SwiftData Model Implementation
```
import Foundation
import SwiftData
@Model
class Friend {
  var name: String
  var birthday: Date
  text
  init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
  
  var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
  }
}
```


### App Entry Point
```
import SwiftUI
import SwiftData
@main
struct BirthdaysApp: App {
  var body: some Scene {
  WindowGroup {
    ContentView()
    .modelContainer(for: Friend.self)
    }
  }
}
```

---

## Next Steps 🔜

After completing this tutorial, consider exploring:

- **Adding notification reminders for upcoming birthdays**
- **Implementing birthday countdown calculations**
- **Adding photo support for friends**
- **Synchronizing data across devices with CloudKit**
- **Building widgets for the home screen**

---

## Contact 📬

Feel free to reach out if you have questions about this implementation or want to discuss iOS development:

- **GitHub:** https://github.com/divyadeepmishra
- **Email:** divydeepmishra@gmail.com
- **LinkedIn:** https://www.linkedin.com/in/divyadeepmishra/

---

## License 📜

This project is for educational purposes, built following Apple's official tutorials. Feel free to use this code as a reference for your own learning journey.

---

**Happy coding!** 🚀  
*Built with ❤️ following Apple's Develop in Swift curriculum*

</center>
