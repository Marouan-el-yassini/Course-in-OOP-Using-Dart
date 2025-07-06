# Student Class Example in Dart

## Overview

This repository demonstrates a simple and clean implementation of object-oriented programming (OOP) concepts in Dart, focusing on encapsulation, getters and setters, and basic class usage.

## Features

- **Student Class:** Defines a student with a name, age, and grade.
- **Encapsulation:** The grade is kept private and accessed/modified via getter and setter methods.
- **Validation:** The setter ensures the grade is within a valid range (0 to 20).
- **Display Method:** Outputs student information in a formatted way.

## Code Example

```dart
class Student{
  String name;
  int age;
  double _grade;

  Student(this.name,this.age,this._grade);

  void displayInfo(){
    print("hey $name--$age--$_grade");
  }

  set updateGrade(double newgrade){
    if(newgrade<0 || newgrade>20){
      print("invalid grade");
      return;
    }
    else{
      this._grade=newgrade;
    }
  }
  
  double get updateGrade{
    return this._grade;
  }
}

void main(){
  Student s1=Student("Marwan",18,19);
  s1.displayInfo();
  s1.updateGrade = 17; // Valid grade
  s1.displayInfo();
}
```

## How to Run

1. Make sure you have [Dart SDK](https://dart.dev/get-dart) installed.
2. Save the code above into a file named `main.dart`.
3. Run the following command in your terminal:

   ```sh
   dart run main.dart
   ```

## Output Example

```
hey Marwan--18--19.0
hey Marwan--18--17.0
```

## Author

- [Marouan-el-yassini](https://github.com/Marouan-el-yassini)

---

Feel free to fork, use, or extend this example for your own Dart learning projects!