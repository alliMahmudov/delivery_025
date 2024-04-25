import 'package:delivery_025/ui/main_page/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClothesPage extends StatefulWidget {
  const ClothesPage({super.key});

  @override
  State<ClothesPage> createState() => _ClothesPageState();
}
class _ClothesPageState extends State<ClothesPage> {

  @override
  void initState() {
    context.read<MainBloc>().add(LoadClothes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                childAspectRatio: .9),
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
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            //color: Colors.red,
                            child: Icon(Icons.remove),
                          ),
                          SizedBox(width: 10,),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Text("213")),
                          SizedBox(width: 10,),
                          Container(
                            height: 20,
                            width: 20,
                            //color: Colors.red,
                            child: Icon(Icons.add),
                          )
                        ],
                      )
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
