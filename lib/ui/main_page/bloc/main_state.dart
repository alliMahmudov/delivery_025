part of 'main_bloc.dart';

@immutable
abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState{}


class FoodLoaded extends MainState{
  final List<FastFood> food;

  const FoodLoaded({required this.food});

  @override
  List<Object> get props => [food];
}

class ClothesLoaded extends MainState{
  final List<Clothes> clothes;

  const ClothesLoaded({required this.clothes});

  @override
  List<Object> get props => [clothes];
}

class BooksLoaded extends MainState{
  final List<Books> books;

  const BooksLoaded({required this.books});

  @override
  List<Object> get props => [books];
}

