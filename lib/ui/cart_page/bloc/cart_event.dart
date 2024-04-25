part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {

  const CartEvent();

  @override
  List<Object?> get props => [];
}


class AddToCartProductEvent extends CartEvent {
  final FastFood product;
  const AddToCartProductEvent({required this.product});
  @override
  List<Object?> get props => [product];
}

class RemoveCartProductEvent extends CartEvent {
  final FastFood product;
  const RemoveCartProductEvent({required this.product});
  @override
  List<Object?> get props => [product];
}

class DeleteCartProductEvent extends CartEvent {}

/*

class LoadFoodCart extends CartEvent {
  @override
  List<Object?> get props => [];
}

class AddFoodToCart extends CartEvent {
  final FastFood food;

  AddFoodToCart(this.food);

  @override
  List<Object> get props => [food]; // Include 'food' in the props list for comparison
*/
