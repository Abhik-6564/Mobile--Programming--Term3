import 'package:flutter/material.dart';
import 'product.dart';

class CartModel extends ChangeNotifier {
  static final CartModel _singleton = CartModel._internal();
  factory CartModel() => _singleton;
  CartModel._internal();

  final List<Product> _items = [];

  List<Product> get items => _items;

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  double get total => _items.fold(0, (sum, item) => sum + item.price);
}
