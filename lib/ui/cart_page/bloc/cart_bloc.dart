import 'package:bloc/bloc.dart';
import 'package:delivery_025/model/fast_food_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  List<FastFood> addToCart = [];

  CartBloc() : super(const LoadedCartProductState(product: [])) {
    on<AddToCartProductEvent>(_onAddToCart);
    on<RemoveCartProductEvent>(_onRemoveFromCart);
    on<DeleteCartProductEvent>(_onDeleteCart);
  }

  void _onAddToCart(AddToCartProductEvent event, Emitter<CartState> emit) {
    addToCart.add(event.product);
    emit(LoadedCartProductState(product: List.from(addToCart)));
  }

  void _onRemoveFromCart(RemoveCartProductEvent event, Emitter<CartState> emit) {
    addToCart.remove(event.product);
    emit(LoadedCartProductState(product: List.from(addToCart)));
  }

  void _onDeleteCart(DeleteCartProductEvent event, Emitter<CartState> emit) {
    addToCart.clear();
    emit(LoadedCartProductState(product: List.from(addToCart)));
  }

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is AddToCartProductEvent) {
      addToCart.add(event.product);
    } else if (event is RemoveCartProductEvent) {
      addToCart.remove(event.product);
    } else if (event is DeleteCartProductEvent) {
      addToCart.clear();
    }

    yield LoadedCartProductState(product: List.from(addToCart));
  }
}


