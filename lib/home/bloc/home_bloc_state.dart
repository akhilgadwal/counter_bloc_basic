part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocState {}

abstract class HomeBlocActionState extends HomeBlocState {}

class HomeBlocInitialstate extends HomeBlocState {}

class HomeBlocLoadingState extends HomeBlocState {}

class HomeLoadedSucessState extends HomeBlocState {}

class HomeLoadedErrorState extends HomeBlocState {}

class HomeClickedCartState extends HomeBlocActionState {}

class HomeClickedWishlistState extends HomeBlocActionState {}
