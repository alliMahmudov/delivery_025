import 'package:delivery_025/constants/app_colors.dart';
import 'package:delivery_025/ui/cart.dart';
import 'package:delivery_025/ui/cart_page/bloc/cart_bloc.dart';
import 'package:delivery_025/ui/main_page/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  @override
  void initState() {
    context.read<MainBloc>().add(LoadFood());
    super.initState();
  }

  int qty = 0;

  void increment() {
    setState(() {
      qty++;
    });
  }

  void decrement() {
    if (qty > 0) {
      setState(() {
        qty--;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    //final CartBloc cartBloc = BlocProvider.of<CartBloc>(context);
    final cart = context.read<Cart>();
    final cartList = cart.foodMenu;
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        if (state is FoodLoaded) {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 4, right: 4, bottom: 30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 4.0, // Spacing between columns
                mainAxisSpacing: 4.0, // Spacing between rows
                childAspectRatio: 1.2),
            itemCount: state.food.length,
            itemBuilder: (context, index) {
              var foodItem = state.food[index];
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(context: context, builder: (context) {

                    double itemPrice = double.parse(foodItem.price.substring(0, foodItem.price.indexOf(' '))); // Parse the price string to a double


                    return StatefulBuilder(
                      builder: (context, setState){
                        return  Container(
                          height: MediaQuery.of(context).size.height * .9,
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    height: 300,
                                    child: Image(image: AssetImage(foodItem.image,),
                                      fit: BoxFit.cover,)),
                                Text(foodItem.name,  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                                Expanded(child: Container(
                                  color: AppColors.mainColor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Text("${(itemPrice * qty).toStringAsFixed(2)} \$", style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),),

                                        const Spacer(),
                                        /// MINUS
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Container(
                                            color: Colors.white.withOpacity(.6),
                                            child: IconButton(onPressed: (){
                                             decrement();
                                            }, icon: Icon(Icons.remove, color: AppColors.mainColor,size: 32,)),
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        Text(qty.toString(), style: const TextStyle(color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),),
                                        const SizedBox(width: 10,),

                                        /// ADD
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Container(
                                            color: Colors.white.withOpacity(.6),
                                            child: IconButton(onPressed: (){
                                              increment();
                                            }, icon: Icon(Icons.add, color: AppColors.mainColor,size: 32,)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  });
                },
                child: Container(
                  color: Colors.grey.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 70,
                        child: Image.asset(
                          foodItem.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        foodItem.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        foodItem.price,
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              );
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}


