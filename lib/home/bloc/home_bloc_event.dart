part of 'home_bloc_bloc.dart';

abstract class HomeBlocEvent {}

class HomeInitialFetch extends HomeBlocEvent {}

class HomeButtonCartClicked extends HomeBlocEvent {}

class HomeButtonWishlistClicked extends HomeBlocEvent {}

class HomeButtonCartNavigateClicked extends HomeBlocEvent {}

class HomeButtonWishlistNavigateClicked extends HomeBlocEvent {}
