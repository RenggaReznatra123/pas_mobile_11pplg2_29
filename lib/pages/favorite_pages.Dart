import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/favorite_controller.Dart';
import 'package:pas_mobile_11pplg2_29/componets/faforite_item_card.Dart';

class FavoritesPage extends StatelessWidget {
  FavoritesPage({super.key});

  final FavoriteController controller = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),

      body: Obx(() {
        final favs = controller.favoriteProducts;
        if (favs.isEmpty) {
          return const Center(child: Text('Belum ada serial favorit'));
        }

        return ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: favs.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (_, i) {
            return FavoriteItemCard(product: favs[i]);
          },
        );
      }),
    );
  }
}
