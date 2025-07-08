# Course in OOP Using Dart

Welcome to the **Course in OOP Using Dart**!  
This repository is designed as a comprehensive journey through Object-Oriented Programming concepts using the Dart language. Whether you are a beginner or looking to solidify your OOP skills, this course will guide you through the foundational principles and advanced features of OOP in Dart, with practical examples and exercises.

---

## 🚀 Table of Contents

- [Introduction](#introduction)
- [Object-Oriented Programming Concepts](#object-oriented-programming-concepts)
  - [1. Classes & Objects](#1-classes--objects)
  - [2. Constructors](#2-constructors)
  - [3. Inheritance](#3-inheritance)
  - [4. Polymorphism](#4-polymorphism)
  - [5. Abstraction](#5-abstraction)
  - [6. Encapsulation](#6-encapsulation)
  - [7. Interfaces & Mixins](#7-interfaces--mixins)
  - [8. Static Members](#8-static-members)
  - [9. Getter & Setter](#9-getter--setter)
  - [10. Exception Handling](#10-exception-handling)
- [Conclusion](#conclusion)
- [Resources](#resources)
- [License](#license)

---

## Introduction

Object-Oriented Programming (OOP) is a paradigm that organizes software design around data, or objects, rather than functions and logic. Dart is a modern language that makes OOP approachable and powerful, enabling you to write robust, maintainable, and scalable applications.

---

## Object-Oriented Programming Concepts

### 1. Classes & Objects

- **Class**: Blueprint for objects; defines properties and behaviors.
- **Object**: Instance of a class with actual values.

```dart
class Person {
  String name;
  int age;
  void sayHello() => print("Hello, my name is $name.");
}
```

### 2. Constructors

- Special functions to initialize objects.
- Dart supports default, named, and factory constructors.

```dart
Person(this.name, this.age);
```

### 3. Inheritance

- Mechanism to create a new class from an existing class.
- Promotes code reuse.

```dart
class Student extends Person {
  String school;
}
```

### 4. Polymorphism

- Ability for different classes to be treated as instances of the same class through interfaces or inheritance.
- Achieved via method overriding.

```dart
@override
void sayHello() => print("Hi! I'm a student.");
```

### 5. Abstraction

- Hiding complex implementation details and showing only the necessary features.
- Achieved using **abstract classes**.

```dart
abstract class Animal {
  void makeSound();
}
```

### 6. Encapsulation

- Bundling data and methods that operate on the data within a class.
- Restricting direct access to some of the object's components (using private fields with `_`).

```dart
class BankAccount {
  double _balance;
  void deposit(double amount) { /* ... */ }
}
```

### 7. Interfaces & Mixins

- **Interface**: Dart uses classes as interfaces.
- **Mixin**: Code reuse in multiple class hierarchies.

```dart
mixin Logger {
  void log(String msg) => print(msg);
}
```

### 8. Static Members

- Belong to the class rather than any instance.

```dart
class MathHelper {
  static double pi = 3.14;
}
```

### 9. Getter & Setter

- Control access to properties.

```dart
class Rectangle {
  int width, height;
  int get area => width * height;
  set width(int value) { width = value; }
}
```

### 10. Exception Handling

- Manage errors gracefully using `try`, `catch`, and `finally`.

```dart
try {
  // code that might throw
} catch (e) {
  print(e);
}
```

---

## 🎯 **Conclusion**

Object-Oriented Programming in Dart empowers developers to write clean, modular, and maintainable code. By mastering concepts such as classes, inheritance, polymorphism, abstraction, and encapsulation, you can create powerful applications that are easy to scale and refactor. Dart's unique features like mixins, factory constructors, and expressive syntax make it an ideal language for OOP enthusiasts.

**With OOP in Dart, you can:**
- Build complex systems with reusable components.
- Organize code better for large projects.
- Enhance maintainability and scalability.

Keep practicing, explore advanced Dart features, and happy coding! 🚀

---

## 📚 Resources

- [Dart Official Documentation](https://dart.dev/guides)
- [OOP in Dart](https://dart.dev/guides/language/language-tour#object-oriented-programming)
- [Effective Dart](https://dart.dev/guides/language/effective-dart)

---

## 📝 License

This project is licensed under the [MIT License](LICENSE).

---

> _"Code is like humor. When you have to explain it, it’s bad." – Cory House_

---
