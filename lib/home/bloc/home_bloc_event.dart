part of 'home_bloc_bloc.dart';

abstract class HomeBlocEvent {}

class HomeInitialFetch extends HomeBlocEvent {}

class HomeButtonCartClicked extends HomeBlocEvent {
  //passing the model products
  final ProductModel clickedHeart;
  HomeButtonCartClicked({required this.clickedHeart});
}

class HomeButtonWishlistClicked extends HomeBlocEvent {
  final ProductModel clickedWhislist;
  HomeButtonWishlistClicked({required this.clickedWhislist});
}

class HomeButtonCartNavigateClicked extends HomeBlocEvent {}

class HomeButtonWishlistNavigateClicked extends HomeBlocEvent {}
