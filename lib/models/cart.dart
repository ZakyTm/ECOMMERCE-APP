import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // List of Shoes for Sales

  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Max 90',
        imagePath: 'lib/images/shoe1.jpeg',
        price: 'Ksh 10,000',
        description: 'The Nike'),
    Shoe(
        name: 'Nike Something',
        imagePath: 'lib/images/shoe2.jpeg',
        price: '234',
        description: 'Buy it brother'),
    Shoe(
        name: 'Another Shoe 3',
        imagePath: 'lib/images/shoe3.jpeg',
        price: '210',
        description: 'just for Wealthy People'),
    Shoe(
        name: 'Shoe 4 Mark Anonymus',
        imagePath: 'lib/images/shoe4.jpeg',
        price: '234',
        description: 'Limited Edition'),
    Shoe(
        name: 'Adidas 5',
        imagePath: 'lib/images/shoe5.jpeg',
        price: '286',
        description: 'No need to describ it the picture is enough'),
  ];

  //List of Items in User card
  List<Shoe> userCart = [];
  //get List of shoes for sale
  List<Shoe> shoeList() {
    return shoeShop;
  }

  //get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add Item to the cart
  void addItemtoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove Item from teh cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
