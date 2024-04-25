import 'package:delivery_025/constants/app_colors.dart';
import 'package:delivery_025/model/fast_food_model.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cart.dart';
import 'bloc/cart_bloc.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  void removeFromCart(FastFood food, BuildContext context){
    final shop = context.read<Cart>();

    shop.removeFromCart(food);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title: const Text("Cart Page"),
        ),
        body: Column(
          children: [
            Expanded(child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final food = value.cart[index];
                  final String name = food.name;
                  final String price = food.price;
                  final String image = food.image;
              return ListTile(
                leading: Image.asset(image),
                title: Text(name),
                subtitle: Text(price),
                trailing: IconButton(icon: Icon(Icons.delete), onPressed: () => removeFromCart(food, context)),
              );
            }))
          ],
        ),
      ),
    );
  }
}
