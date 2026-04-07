import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/style/theme.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    required this.title,
    required this.name,
    required this.rating,
    required this.price,
    required this.imageUrl,
    super.key,
  });
  final String imageUrl;
  final String title;
  final String name;
  final String rating;
  final String price;
  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: cardBackground,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 21,
            right: 21,
            bottom: 26,
          ),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, dynamic error) => Container(),
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            height: 70,
            width: 70,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 12,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.black,
                      size: 9,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      rating,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 12,
                        color: textHintColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 14,
                    color: Colors.black.withValues(alpha: 0.75),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12.0, right: 16),
          child: Icon(Icons.favorite_border),
        ),
      ],
    ),
  );
}
