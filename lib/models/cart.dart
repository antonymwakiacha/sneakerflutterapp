import 'package:flutter/material.dart';
import 'package:sneakerapp/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/ZoomFreak.png',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '220',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/air.png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/KDTrey.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/Kyrie6.png',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
