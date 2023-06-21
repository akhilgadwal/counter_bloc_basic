import 'package:bloc_counter/cart/ui/cart.dart';
import 'package:bloc_counter/components/product_tile.dart';
import 'package:bloc_counter/home/bloc/home_bloc_bloc.dart';
import 'package:bloc_counter/wishlist/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBlocBloc homeBlocBloc = HomeBlocBloc();
  @override
  void initState() {
    homeBlocBloc.add(HomeInitialFetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homeBlocBloc,
      listenWhen: (previous, current) => current is HomeBlocActionState,
      buildWhen: (previous, current) => current is! HomeBlocActionState,
      listener: (context, state) {
        if (state is HomeClickedCartState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartScreen()));
        } else if (state is HomeClickedWishlistState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WishListScreen()));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeBlocLoadingState:
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          case HomeLoadedSucessState:
            final success = state as HomeLoadedSucessState;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal,
                title: const Text('Home Page'),
                actions: [
                  IconButton(
                      onPressed: () {
                        homeBlocBloc.add(HomeButtonCartNavigateClicked());
                      },
                      icon: const Icon(Icons.favorite_border)),
                  IconButton(
                      onPressed: () {
                        homeBlocBloc.add(HomeButtonWishlistNavigateClicked());
                      },
                      icon: const Icon(Icons.shopping_bag_outlined))
                ],
              ),
              body: ListView.builder(
                  itemCount: success.products.length,
                  itemBuilder: (context, index) {
                    return ProductTile(productModel: success.products[index]);
                  }),
            );
          case HomeLoadedErrorState:
            return const Scaffold(
              body: Center(child: Text('Error')),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
