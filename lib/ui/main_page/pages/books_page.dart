import 'package:delivery_025/ui/main_page/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}
class _BooksPageState extends State<BooksPage> {

  @override
  void initState() {
    context.read<MainBloc>().add(LoadBooks());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        if (state is BooksLoaded) {
          return GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 4, right: 4, bottom: 30),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 4.0, // Spacing between columns
                mainAxisSpacing: 4.0, // Spacing between rows
                childAspectRatio: .9),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              var booksItem = state.books[index];
              return GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text(booksItem.name),
                            content: Text(booksItem.description));
                      });
                },
                child: Container(
                  color: Colors.grey.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Image.asset(
                          booksItem.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        booksItem.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        booksItem.price,
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
