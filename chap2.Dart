import 'dart:io';
class Employe{
  String? name;
  int? hours;
  double hsalary=0;
  int? anciannet;
  double prime=0;

  Employe({required this.name,required this.hours,required this.anciannet});

  double calculateSalary(){
    if(anciannet!<1){
      prime=0;
    }
    else if(anciannet!>=1 && anciannet!<5){
      prime=2000;
    }
    else{
      prime=5000;
    }
    return hours!*hsalary+prime;
  }
}

class Manger extends Employe{
  Manger({required String name,required int hours,required int anciannet}):super(name:name,hours:hours,anciannet:anciannet);
  @override
  double calculateSalary(){
    hsalary=4000;
    return super.calculateSalary();
  }
}

class Dev extends Employe{
  Dev({required String name,required int hours,required int anciannet}):super(name:name,hours:hours,anciannet:anciannet);
  @override
  double calculateSalary(){
    hsalary=3000;
    return super.calculateSalary();
  }
}

void main(){
  print("enter your information :");
   stdout.write("Name: ");
  String? nam=stdin.readLineSync();
  int? hors=int.tryParse(stdin.readLineSync()!);
  int? aciannet=int.tryParse(stdin.readLineSync()!);

  print("Select bettwen Dev and Manger");
  String? choice=stdin.readLineSync();

  switch(choice){
    case "Dev":
          Dev d=Dev(name:nam!,hours:hors!,anciannet:aciannet!);
          print("hey $nam votre salaire est ${d.calculateSalary()}");
          break;
    case "Manger":
          Manger m=Manger(name:nam!,hours:hors!,anciannet:aciannet!);
          print("hey $nam votre salaire est ${m.calculateSalary()}");
          break;
    default:
         print("Repeat!!!!");
         break;
  }

}