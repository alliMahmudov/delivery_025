part of 'cart_bloc.dart';

@immutable
abstract class CartState extends Equatable {
  const CartState();


  @override
  List<Object?> get props => []; // Include 'cartItems' in props for comparison
}
class LoadingCartProductState extends CartState {}

class LoadedCartProductState extends CartState {
  final List<FastFood> product;
  const LoadedCartProductState({required this.product});
  @override
  List<Object?> get props => [product];
}

class ErrorCartProductState extends CartState {
  final String message;

  const ErrorCartProductState({required this.message});
  @override
  List<Object?> get props => [message];
}

/*

sealed class CartState extends Equatable {
  const CartState();
}

final class CartInitial extends CartState {
  @override
  List<Object> get props => [];
}
*/
