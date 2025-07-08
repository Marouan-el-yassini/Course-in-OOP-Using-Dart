import 'dart:io';
mixin Loggin{
  String? username;
  int? password;

  void logginAccses(){
    if(username=="azerty" && password==1234567890){
      print("Welcome $username to the store!");
    }
    else{
      print("impossible access");
    }
  }

}

abstract class Discountable{
  double applyDiscount();
}

class Product implements Discountable {
  String? name;
  int quantity;
  int age;
  double discount=0;

  Product({required this.name,required this.age,required this.quantity});


@override
 double  applyDiscount(){
  if(age!>=0 && age!<18){
    discount=20;
  }
  else if(age!>18 && age<35){
    discount=120;
  }
  else{
    discount=170;
  }
  return discount;
 }
}

class CartItem extends Product with Loggin{
  CartItem({required String name, required this.price,required int age,required int quantity}):super(name:name,age:age,quantity:quantity);
  double price=0.0;
  static double total=0;

  void calculatTotal(){
    switch(name){
      case "Samsung S20":
              price=10000;
              total=price!*quantity-discount;
              break;
      case "Iphone 16":
              price=15000;
              total=price!*quantity-discount;
              break;

      case "Oppo":
              price=4000;
              total=price!*quantity-discount;
              break;
      default:
            print("Your choice not selected");
            break;   
    }
  }
}

void main(){
  print("hello to the shopping system please enter the information of the prodcuct and yours: ");
  stdout.write("Product name:");
  String? nam=stdin.readLineSync();
  stdout.write("Quantity:");
  int? quant=int.tryParse(stdin.readLineSync()!);
  stdout.write("Age:");
  int? ag=int.tryParse(stdin.readLineSync()!);
  stdout.write("username:");
  String? use=stdin.readLineSync();
  stdout.write("password");
  int? passw=int.tryParse(stdin.readLineSync()!);

  CartItem c=CartItem(name:nam!,age:ag!,quantity:quant!,price:0.0);

  c.username=use;
  c.password=passw;

  c.logginAccses();

  double n=c.applyDiscount();

  c.calculatTotal();

  print("the total is :${CartItem.total}");

  


}
