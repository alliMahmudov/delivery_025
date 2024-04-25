part of 'main_bloc.dart';

@immutable
abstract class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

class LoadFood extends MainEvent {}

class LoadClothes extends MainEvent {}

class LoadBooks extends MainEvent {}

