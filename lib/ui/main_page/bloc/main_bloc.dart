import 'package:bloc/bloc.dart';
import 'package:delivery_025/model/books_model.dart';
import 'package:delivery_025/model/clothes_model.dart';
import 'package:delivery_025/model/fast_food_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<LoadFood>(
      (event, emit) => emit(FoodLoaded(food: FastFood.food)),
    );

    on<LoadClothes>(
      (event, emit) => emit(ClothesLoaded(clothes: Clothes.clothes)),
    );
    on<LoadBooks>(
      (event, emit) => emit(BooksLoaded(books: Books.books)),
    );
  }
}
