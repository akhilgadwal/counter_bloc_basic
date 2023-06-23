part of 'home_bloc_bloc.dart';

abstract class HomeBlocState {}

abstract class HomeBlocActionState extends HomeBlocState {}

class HomeBlocInitialstate extends HomeBlocState {}

class HomeBlocLoadingState extends HomeBlocState {}

class HomeLoadedSucessState extends HomeBlocState {
  final List<ProductModel> products;
  HomeLoadedSucessState({required this.products});
}

class HomeLoadedErrorState extends HomeBlocState {}

class HomeClickedCartState extends HomeBlocActionState {}

class HomeClickedWishlistState extends HomeBlocActionState {}

class HomeProducttileHeartClicked extends HomeBlocActionState {}

class HomeProdcustileWishlistClicked extends HomeBlocActionState {}
