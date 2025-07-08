# 🛒 Dart OOP Mini-Course: Shopping Cart System

Welcome to an interactive exploration of **Object-Oriented Programming (OOP)** in Dart, using a real-world Shopping Cart example!  
This project covers advanced OOP concepts like mixins, abstract classes, and interfaces, making it perfect for beginners aiming to deepen their understanding.

---

## 🚀 Project Overview

This console-based Dart app simulates a simple shopping system.  
Users enter product and personal details, log in, and receive a calculated total with personalized discounts—showcasing key OOP features in action.

---

## 🏗️ OOP Concepts Demonstrated

- **Mixin:** The `Loggin` mixin adds reusable login functionality.
- **Abstract Class & Interface:** `Discountable` defines a contract for discount calculation that all products must implement.
- **Inheritance:** `CartItem` extends `Product` and mixes in `Loggin` for combined behavior.
- **Encapsulation:** Properties and methods are grouped logically within classes.

---

## 👨‍💻 How It Works

1. **Login System:**  
   The user must enter the correct username (`azerty`) and password (`1234567890`) to access the store.

2. **Product Input:**  
   The user enters product name, quantity, and their age.

3. **Discount Calculation:**  
   - Under 18: 20 discount
   - 18–34: 120 discount
   - 35 and above: 170 discount

4. **Total Calculation:**  
   The final price depends on the product and applies the discount.

---

## 🧩 Example Code

```dart
import 'dart:io';

mixin Loggin {
  String? username;
  int? password;

  void logginAccses() {
    if (username == "azerty" && password == 1234567890) {
      print("Welcome $username to the store!");
    } else {
      print("impossible access");
    }
  }
}

abstract class Discountable {
  double applyDiscount();
}

class Product implements Discountable {
  String? name;
  int quantity;
  int age;
  double discount = 0;

  Product({required this.name, required this.age, required this.quantity});

  @override
  double applyDiscount() {
    if (age >= 0 && age < 18) {
      discount = 20;
    } else if (age >= 18 && age < 35) {
      discount = 120;
    } else {
      discount = 170;
    }
    return discount;
  }
}

class CartItem extends Product with Loggin {
  CartItem(
      {required String name,
      required this.price,
      required int age,
      required int quantity})
      : super(name: name, age: age, quantity: quantity);

  double price = 0.0;
  static double total = 0;

  void calculatTotal() {
    switch (name) {
      case "Samsung S20":
        price = 10000;
        total = price * quantity - discount;
        break;
      case "Iphone 16":
        price = 15000;
        total = price * quantity - discount;
        break;
      case "Oppo":
        price = 4000;
        total = price * quantity - discount;
        break;
      default:
        print("Your choice not selected");
        break;
    }
  }
}

void main() {
  print(
      "hello to the shopping system please enter the information of the product and yours: ");
  stdout.write("Product name: ");
  String? nam = stdin.readLineSync();
  stdout.write("Quantity: ");
  int? quant = int.tryParse(stdin.readLineSync()!);
  stdout.write("Age: ");
  int? ag = int.tryParse(stdin.readLineSync()!);
  stdout.write("Username: ");
  String? use = stdin.readLineSync();
  stdout.write("Password: ");
  int? passw = int.tryParse(stdin.readLineSync()!);

  CartItem c = CartItem(name: nam!, age: ag!, quantity: quant!, price: 0.0);

  c.username = use;
  c.password = passw;

  c.logginAccses();

  c.applyDiscount();

  c.calculatTotal();

  print("The total is: ${CartItem.total}");
}
```

---

## 💡 Try It Yourself

1. Install [Dart SDK](https://dart.dev/get-dart)
2. Save the code above as `main.dart`
3. Run in your terminal:
   ```sh
   dart run main.dart
   ```

### Sample Interaction

```
hello to the shopping system please enter the information of the product and yours: 
Product name: Samsung S20
Quantity: 2
Age: 20
Username: azerty
Password: 1234567890
Welcome azerty to the store!
The total is: 19880.0
```

---

## 📝 Challenge Ideas

- Add more products and prices.
- Allow for multiple items in the cart.
- Secure password input (hide characters).
- Prevent invalid or negative inputs.
- Internationalize messages.

---

## ✍️ Author

**Marouan-el-yassini**  
[GitHub](https://github.com/Marouan-el-yassini)

---

> **Happy Coding & Shopping! 🛒**