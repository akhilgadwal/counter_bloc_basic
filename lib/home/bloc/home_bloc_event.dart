part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocEvent {}

class HomeButtonCartClicked extends HomeBlocEvent {}

class HomeButtonWishlistClicked extends HomeBlocEvent {}

class HomeButtonCartNavigateClicked extends HomeBlocEvent {}

class HomeButtonWishlistNavigateClicked extends HomeBlocEvent {}
