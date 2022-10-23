import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transaction {
  String image;
  String name;
  String date;
  String time;
  int price;
  String type;
  IconData icon = Icons.account_balance_wallet;

  Transaction({
    required this.image,
    required this.name,
    required this.date,
    required this.time,
    required this.price,
    required this.type,
  });

  static List<Transaction> transactions = [
    Transaction(
      image: 'assets/images/chair.jpg',
      name: 'Lawson Chair',
      date: 'Dec 15, 2024',
      time: '10:00 AM',
      price: 120,
      type: 'Orders',
    ),
    Transaction(
      image: '',
      name: 'Top Up Wallet',
      date: 'Dec 14, 2024',
      time: '16:42 PM',
      price: 400,
      type: 'Top Up',
    ),
    Transaction(
      image: 'assets/images/reflector.jpg',
      name: 'Parabolic Reflector',
      date: 'Dec 14, 2024',
      time: '11:39 AM',
      price: 170,
      type: 'Orders',
    ),
    Transaction(
      image: 'assets/images/table.png',
      name: 'Mini Wooden Table',
      date: 'Dec 13, 2024',
      time: '14:46 AM',
      price: 165,
      type: 'Orders',
    ),
    Transaction(
      name: 'Top Up Wallet',
      date: 'Dec 12, 2024',
      time: '09:27 AM',
      price: 300,
      type: 'Top Up',
      image: '',
    ),
  ];
}
