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
  s1.updateGrade = 17; // Invalid grade
  s1.displayInfo();
}