import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:bloc_counter/data/data.dart';

import '../model/home_prod_data.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitialstate()) {
    on<HomeInitialFetch>(homeiniifetch);
    on<HomeButtonCartNavigateClicked>(homeButtonCartNavigateClicked);
    on<HomeButtonWishlistNavigateClicked>(homeButtonWishlistNavigateClicked);
  }
  FutureOr<void> homeiniifetch(
      HomeInitialFetch event, Emitter<HomeBlocState> emit) async {
    //the first state will be a loading state
    emit(HomeBlocLoadingState());
    //the sencond would be the loading state of the productions
    await Future.delayed(const Duration(seconds: 3));
    emit(
      HomeLoadedSucessState(
          products: DataStore.groceryData
              .map((e) => ProductModel(
                  name: e['name'],
                  id: e['id'],
                  price: e['price'],
                  description: e['description'],
                  imageUrl: e['image']))
              .toList()),
    );
  }

  FutureOr<void> homeButtonCartNavigateClicked(
      HomeButtonCartNavigateClicked event, Emitter<HomeBlocState> emit) {
    log('CART Clicked');
    emit(HomeClickedCartState());
  }

  FutureOr<void> homeButtonWishlistNavigateClicked(
      HomeButtonWishlistNavigateClicked event, Emitter<HomeBlocState> emit) {
    log('Wishlist Clicked');
    emit(HomeClickedWishlistState());
  }
}
