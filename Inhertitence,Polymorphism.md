# 💼 Dart OOP Crash Course: Employee Salary System

Welcome to a beginner-friendly Dart project where you’ll learn **Object-Oriented Programming (OOP)** by building a simple Employee Salary System.  
This mini-course uses `Employe`, `Manager`, and `Dev` classes to introduce you to essential OOP concepts—perfect for those new to programming!

---

## 🚀 About OOP & This Project

**Object-Oriented Programming (OOP)** organizes code into objects, making it easier to model real-world situations and maintain your codebase.  
This project covers key OOP principles:

- **Encapsulation:** Keeping data and methods together
- **Inheritance:** Creating new classes based on existing ones
- **Polymorphism:** Overriding methods for specialized behavior

---

## 👨‍💼 Code Overview

You’ll create a system where users enter employee details, select their role (Developer or Manager), and receive a calculated salary based on experience and hours worked.

```dart
import 'dart:io';

// Base class: Employee
class Employe {
  String? name;
  int? hours;
  double hsalary = 0;
  int? anciennete;
  double prime = 0;

  Employe({required this.name, required this.hours, required this.anciennete});

  double calculateSalary() {
    // Calculate bonus (prime) based on years of experience (anciennete)
    if (anciennete! < 1) {
      prime = 0;
    } else if (anciennete! >= 1 && anciennete! < 5) {
      prime = 2000;
    } else {
      prime = 5000;
    }
    return hours! * hsalary + prime;
  }
}

// Derived class: Manager
class Manager extends Employe {
  Manager({required String name, required int hours, required int anciennete})
      : super(name: name, hours: hours, anciennete: anciennete);

  @override
  double calculateSalary() {
    hsalary = 4000;
    return super.calculateSalary();
  }
}

// Derived class: Developer
class Dev extends Employe {
  Dev({required String name, required int hours, required int anciennete})
      : super(name: name, hours: hours, anciennete: anciennete);

  @override
  double calculateSalary() {
    hsalary = 3000;
    return super.calculateSalary();
  }
}

void main() {
  print("Enter your information:");
  stdout.write("Name: ");
  String? nam = stdin.readLineSync();
  stdout.write("Hours worked: ");
  int? hors = int.tryParse(stdin.readLineSync()!);
  stdout.write("Years of experience: ");
  int? anciennete = int.tryParse(stdin.readLineSync()!);

  print("Select between 'Dev' and 'Manager':");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case "Dev":
      Dev d = Dev(name: nam!, hours: hors!, anciennete: anciennete!);
      print("Hey $nam, your salary is ${d.calculateSalary()}");
      break;
    case "Manager":
      Manager m = Manager(name: nam!, hours: hors!, anciennete: anciennete!);
      print("Hey $nam, your salary is ${m.calculateSalary()}");
      break;
    default:
      print("Please repeat and choose a valid role!");
      break;
  }
}
```

---

## 🧑‍🏫 OOP Concepts Demonstrated

### 1. **Encapsulation**
- Employee details and salary logic are grouped within classes.

### 2. **Inheritance**
- `Dev` and `Manager` classes inherit from `Employe` and reuse logic.

### 3. **Polymorphism**
- Each subclass (`Dev`, `Manager`) overrides the `calculateSalary` method to set its own hourly rate.

---

## 💡 Try It Yourself

### How to Run

1. Install [Dart SDK](https://dart.dev/get-dart)
2. Save the code above as `main.dart`
3. In your terminal, run:

   ```sh
   dart run main.dart
   ```

### Sample Output

```
Enter your information:
Name: Alice
Hours worked: 10
Years of experience: 3
Select between 'Dev' and 'Manager':
Dev
Hey Alice, your salary is 32000.0
```

---

## 📝 Challenges

- Add a new employee role!
- Prevent negative or zero input values.
- Localize messages to your preferred language.
- Add more salary rules based on your needs.

---

## 🙋 About

Created by **Marouan-el-yassini**  
[GitHub](https://github.com/Marouan-el-yassini)

---

> **Happy Coding! 🚀**
