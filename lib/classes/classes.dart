import 'package:flutter/material.dart';

class MyStyle extends TextStyle{
  @override
  // TODO: implement color
  Color? get color =>  Colors.white54;

}
class MyColor {
  Color color=Colors.white54;

}

class Request{
  String name;
  int mutual;
  int year;
  var image;
  Request({required this.name,required this.mutual,required this.year,required this.image});
}

class Sale{
  String name;
  int price;
  String details;
  var image;
  Sale({required this.name,required this.price,required this.details,required this.image});
}

class Notifi{
  String name;
  DateTime date;
  String details;
  var image;
  Icon icon;
  Color color;
  Notifi({required this.name,required this.date,required this.details,required this.image,required this.icon,required this.color});
}

class MenuItems{
  String name;
  var image;
  MenuItems({required this.name,required this.image});
}



List friendRequest=[
  Notifi(name: 'uora dani',date: DateTime(2021,8,17,17,01),details:'invited you to like Rawand',image: 'assets/requests/3.jpg',icon: Icon(Icons.flag,color: Colors.white,size: 18,),color: Colors.orange,),
  Notifi(name: 'santush jani',date: DateTime(2021,1,23,1,01),details:'posted in Shko',image: 'assets/requests/12.jpg',icon: Icon(Icons.people,color: Colors.white,size: 18,),color: Colors.blue,),
  Notifi(name: 'ahmad sevin',date: DateTime(2021,1,23,2,33),details:'mentioned you in a comment',image: 'assets/requests/5.jpg',icon: Icon(Icons.mode_comment,color: Colors.white,size: 18,),color: Colors.green.shade400,),
  Notifi(name: 'De lopes',date: DateTime(2021,4,23,7,12),details:'reacted to your comment',image: 'assets/requests/10.jpg',icon: Icon(Icons.emoji_emotions,color: Colors.white,size: 18,),color: Colors.amber,),
  Notifi(name: 'arshad tol',date: DateTime(2021,3,23,8,55),details:'made an announcement in Dezoom',image: 'assets/requests/4.jpg',icon: Icon(Icons.people,color: Colors.white,size: 18,),color: Colors.blue,),
  Notifi(name: 'Ari ahsfsdfddsfdfsfsmad',date: DateTime(2021,6,23,23,11),details:'invited you to like Rawand',image: 'assets/requests/1.jpg',icon: Icon(Icons.flag,color: Colors.white,size: 18,),color: Colors.orange,),
  Notifi(name: 'forto black',date: DateTime(2021,5,23,4,01),details:'posted in Shko',image: 'assets/requests/7.jpg',icon: Icon(Icons.people,color: Colors.white,size: 18,),color: Colors.blue,),
  Notifi(name: 'Hil Lri',date: DateTime(2021,12,23,15,30),details:'made an announcement in Dezoom',image: 'assets/requests/9.jpg',icon: Icon(Icons.people,color: Colors.white,size: 18,),color: Colors.blue,),
  Notifi(name: 'omer wali',date: DateTime(2021,10,23,2,56),details:'posted in Shko',image: 'assets/requests/2.jpg',icon: Icon(Icons.people,color: Colors.white,size: 18,),color: Colors.blue,),
  Notifi(name: 'golio roun',date: DateTime(2021,7,23,4,09),details:'reacted to your comment',image: 'assets/requests/6.jpg',icon: Icon(Icons.emoji_emotions,color: Colors.white,size: 18,),color: Colors.amber,),
  Notifi(name: 'cristena lopi',date: DateTime(2021,9,23,24,01),details:'mentioned you in a comment',image: 'assets/requests/8.jpg',icon: Icon(Icons.mode_comment,color: Colors.white,size: 18,),color: Colors.green,),
  Notifi(name: 'vegan oral',date: DateTime(2021,6,23,23,23),details:'invited you to like Rawand',image: 'assets/requests/11.jpg',icon: Icon(Icons.flag,color: Colors.white,size: 18,),color: Colors.orange,),

];

List SaleItems=[
  Sale(name: "Z fold",price: 255,details: 'Save your time & money on global product',image: 'assets/sales/999.jpg'),
  Sale(name: "VR",price: 253,details: 'this is the most expensive item',image: 'assets/sales/22.jpg'),
  Sale(name: "Playstation 5",price: 1032,details: 'this is the most expensive item',image: 'assets/sales/33.jpg'),
  Sale(name: "Playstation Controller",price: 55,details: 'this is the most expensive item',image: 'assets/sales/44.jpg'),
  Sale(name: "Wireless Controller",price: 99,details: 'Save your time & money on global product',image: 'assets/sales/55.jpg'),
  Sale(name: "Nokia 3310",price: 36,details: 'this is the most expensive item',image: 'assets/sales/66.jpg'),
  Sale(name: "Iphone s6",price: 108,details: 'this is the most expensive item',image: 'assets/sales/77.jpg'),
  Sale(name: "Galaxy 2",price: 20,details: 'this is the most expensive item',image: 'assets/sales/88.jpg'),
  Sale(name: "Note 8",price: 550,details: 'this is the most expensive item',image: 'assets/sales/99.jpg'),
  Sale(name: "Huawae y9",price: 205,details: 'this is the most expensive item',image: 'assets/sales/100.jpg'),
  Sale(name: "laptop",price: 390,details: 'this is the most expensive item',image: 'assets/sales/111.jpg'),
  Sale(name: "Iphone 8",price: 300,details: 'this is the most expensive item',image: 'assets/sales/200.jpg'),
  Sale(name: "Iphone x Max",price: 360,details: 'this is the most expensive item',image: 'assets/sales/222.jpg'),
  Sale(name: "Iphone 5s",price: 80,details: 'this is the most expensive item',image: 'assets/sales/333.jpg'),
  Sale(name: "Iphone 12 Pro Max",price: 1200,details: 'this is the most expensive item',image: 'assets/sales/444.jpg'),
  Sale(name: "Apple laptop",price: 1600,details: 'this is the most expensive item',image: 'assets/sales/555.jpg'),
  Sale(name: "Legion",price: 1080,details: 'this is the most expensive item',image: 'assets/sales/666.jpg'),
  Sale(name: "Macbook Pro",price: 2130,details: 'this is the most expensive item',image: 'assets/sales/777.jpg'),
  Sale(name: "Playstation 3",price: 700,details: 'this is the most expensive item',image: 'assets/sales/888.jpg'),
  Sale(name: "Playstation 3",price: 700,details: 'this is the most expensive item',image: 'assets/sales/11.jpg'),

];
