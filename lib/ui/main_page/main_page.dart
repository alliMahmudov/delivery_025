import 'package:delivery_025/constants/app_colors.dart';
import 'package:delivery_025/constants/assets.dart';
import 'package:delivery_025/ui/cart_page/cart_page.dart';
import 'package:delivery_025/ui/main_page/bloc/main_bloc.dart';
import 'package:delivery_025/ui/main_page/pages/books_page.dart';
import 'package:delivery_025/ui/main_page/pages/clothes_page.dart';
import 'package:delivery_025/ui/main_page/pages/food_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cart_page/bloc/cart_bloc.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Widget> tabs = [
    const Tab(child: Text("Food")),
    const Tab(child: Text("Book")),
    const Tab(child: Text("Clothes")),
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("025 Delivery", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),),
      backgroundColor: AppColors.mainColor,
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider<CartBloc>(
                    create: (_) => CartBloc(),
                    child: AddToCartScreen(),
                  ),
                ),
              );

            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              padding: const EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(12)),
              child: TabBar(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  controller: _tabController,
                  splashBorderRadius: BorderRadius.circular(10),
                  // indicatorColor: AppColors.red,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black26,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 0.1,
                  indicator: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(10)),
                  tabs: tabs),
            ),
          ),
          Expanded(
              child: TabBarView(
                  dragStartBehavior: DragStartBehavior.down,
                  controller: _tabController,
                  children: [
                const FoodPage(),
                const BooksPage(),
                const ClothesPage()
              ]))
        ],
      ),
    );
  }

/*  Widget foodTab(BuildContext context) {
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
                childAspectRatio: 1.0),
            itemCount: state.food.length,
            itemBuilder: (context, index) {
              var foodItem = state.food[index];
              return GestureDetector(
                onTap: () {
                  foodItem.id == 10 || foodItem.id == 11 || foodItem.id == 12
                      ? showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                title: Text(foodItem.name),
                                content: RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                      // Set your desired text color here
                                      fontSize:
                                          16, // Set your desired font size here
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: 'Ingredients - ',
                                        style: TextStyle(
                                          fontWeight: FontWeight
                                              .bold, // Make "Ingredients" bold
                                        ),
                                      ),
                                      TextSpan(
                                        text: foodItem
                                            .description, // Append the description
                                      ),
                                    ],
                                  ),
                                ));
                          })
                      : null;
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
  }*/

/*  Widget clothesTab(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        if (state is ClothesLoaded) {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 4, right: 4, bottom: 30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 4.0, // Spacing between columns
                mainAxisSpacing: 4.0, // Spacing between rows
                childAspectRatio: 1.0),
            itemCount: state.clothes.length,
            itemBuilder: (context, index) {
              var clothesItem = state.clothes[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.grey.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Image.asset(
                          clothesItem.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        clothesItem.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        clothesItem.price,
                        textAlign: TextAlign.center,
                      ),
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
  }*/
}
