# quote_app_daily_task

# 17.1 Factory Constructor & Modal Class

# 1. What is Factory Constructor?

Factory constructors in Dart are flexible alternatives to generative constructors. Unlike generative constructors that always return a new instance, factory constructors allow greater control over the creation of objects. They can return instances of subclasses, new instances, or even existing instances.

# Advantages of Factory constructor:-

-  Flexible alternatives to generative constructors.
-  It is a named constructor.
- Returning Subclass Instances.
- Efficient Object Creation.
-  Singleton Pattern.
 
 # Example
 ```bash
import 'dart:io';
import 'bank.dart';

class BankModel {
  bool? isActive;
  String? balance, eyeColor, name, gender, company, email, phone, address;
  int? age;

// this details are in the form of map of List in other dart file

  BankModel({
    this.isActive,
    this.name,
    this.balance,
    this.eyeColor,
    this.gender,
    this.company,
    this.email,
    this.phone,
    this.address,
    this.age,
  });
  factory BankModel.frombanking({required Map Banking}) {
    return BankModel(
        address: Banking['address'],
        age: Banking['age'],
        balance: Banking['balance'],
        company: Banking['company'],
        email: Banking['email'],
        eyeColor: Banking['eyeColor'],
        gender: Banking['gender'],
        isActive: Banking['isActive'],
        name: Banking['name'],
        phone: Banking['phone']);
  }
}

void main(){
  List<BankModel> bankModellist = [];

  for(int i = 0; i < bankData.length; i++){
    BankModel bm1 = BankModel.frombanking(Banking: bankData[i]);
    bankModellist.add(bm1);
  }
  for(int i = 0; i < bankModellist.length; i++){
    print(bankModellist[i].name);
    print(bankModellist[i].age);
    print(bankModellist[i].email);
    print(bankModellist[i].phone);
    print(bankModellist[i].isActive);
    print(bankModellist[i].balance);
    print(bankModellist[i].gender);
    print(bankModellist[i].eyeColor);
    print(bankModellist[i].address);
    print(bankModellist[i].company);
  }
}
 ```

 # 2. What is Modal Class?
In very simpler terms, models are just classes which help us to determine the structure of the data.
Modal class in statistics refers to a class having the highest frequency. It refers to a class in which the frequency is the highest in a continuous quantitative statistical variable distribution in which the values are grouped into classes with similar dimensions.

# Advantages

1) Readability
- It's just easier to read and understand your code. You can create models like User, Subscription, Product, Location, which say much more then just a raw json.

2) Faster
- You create a class (model) and you can use it in many places which speeds up your development

3) Safer
- You can use your model as other class property or function parameter. If you pass something else your IDE will show you the warning.

4) Structure
- Structuring the code and split it into smaller parts is a key rule of clean architecture. As your app will grow, it will be much easier if you have every model in the separate file

5) Related to the model
- You can add to you model: from and to Json method, copyWith, getters and setter, factories, methods, props and much more that is strongly connected with your class.

6) Code generation
- The only thing that can discourage you from using models is the fact that they contain a lot of boiler plates (lines of code that you have ti write for every model). However, currently we have so many tools that can help you with automated code generation. You can write your own snippets, use build_runner for generating fromJson/toJson methods, use `freezed`, GitHub Copilot, or the newest Flutter macros. Every of these options will generate the data class model for you.

7) Testing
- Using models makes it much easier to test your code

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# 17.2 Dialoge Box

<img src="https://github.com/Sahilk0809/quote_app_daily_task/assets/149374235/16c93f35-8212-41ff-a40a-62d5c0e38b9b" height=65% width=22%>
<img src="https://github.com/Sahilk0809/quote_app_daily_task/assets/149374235/f3724e83-f14c-41ca-ab62-153a683435a7" height=65% width=22%>
<img src="https://github.com/Sahilk0809/quote_app_daily_task/assets/149374235/3fcb59ad-f52c-4c27-b748-1c8071428ef0" height=65% width=22%>
<img src="https://github.com/Sahilk0809/quote_app_daily_task/assets/149374235/8a8f5605-b3cf-4392-ab22-e0b642af0236" height=65% width=22%>

https://github.com/Sahilk0809/quote_app_daily_task/assets/149374235/0ec0bdc9-4d8e-4538-aeaf-ef38dda07492
