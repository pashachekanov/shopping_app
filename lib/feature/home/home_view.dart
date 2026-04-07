import 'package:flutter/material.dart';
import 'package:shopping_app/domain_models/products.dart';
import 'package:shopping_app/feature/home/widgets/product_card_widget.dart';
import 'package:shopping_app/localization/shopping_app_localization.dart';

class HomeView extends StatelessWidget {
  const HomeView({required this.products, super.key});
  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      itemCount: products.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 22),
            child: Text(
              ShoppingAppLocalization.of(context).app_title,
              style: _textTheme.headlineMedium!.copyWith(
                fontSize: 24,
              ),
            ),
          );
        }
        return Material(
          type: MaterialType.transparency,
          borderRadius: BorderRadius.circular(14),
          child: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsetsGeometry.only(bottom: 8),
              child: ProductCardWidget(
                imageUrl: products[index].images?[0] ?? '',
                title: products[index].title!,
                name: products[index].description!,
                rating: products[index].rating.toString(),
                price: products[index].price!.toString(),
              ),
            ),
          ),
        );
      },
    );
  }
}
