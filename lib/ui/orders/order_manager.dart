import 'package:flutter/foundation.dart';

import '../../models/cart_item.dart';
import '../../models/order_item.dart';

class OrderManager with ChangeNotifier{
  final List<OrderItem> _orders = [
    OrderItem(
      id: 'o1',
      amount: 59.98, 
      products: [
        CartItem(id: 'c1', title: 'Red Shirt', quantity: 2, price: 29.99)
      ],
      dateTime: DateTime.now(),
    )
  ];
  int get orderCount{
    return _orders.length;
  }
  List<OrderItem> get orders{
    return [..._orders];
  }
}