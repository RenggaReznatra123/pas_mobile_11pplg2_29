import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/mainmenu_controller.dart';
import 'package:pas_mobile_11pplg2_29/pages/favorite_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/profile_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/tvshow_pages.dart';

class MainmenuPages extends StatelessWidget {
  MainmenuPages({super.key});

  final MainmenuController controller = Get.find<MainmenuController>();

  final List<Widget> pages = [TvshowPage(), FavoritePage(), ProfilePage()];

  final List<String> pageTitles = const ["list TVshow", "Bookmark", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(pageTitles[controller.currentIndex.value])),
        backgroundColor: const Color.fromARGB(255, 0, 157, 255),
        foregroundColor: Colors.white,
      ),
      body: Obx(
        () =>
            IndexedStack(index: controller.currentIndex.value, children: pages),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.tv),
              label: 'TV Shows',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(IconData icon, String title, int index) {
    return Obx(
      () => ListTile(
        leading: Icon(icon),
        title: Text(title),
        selected: controller.currentIndex.value == index,
        onTap: () {
          controller.changePage(index);
          Get.back();
        },
      ),
    );
  }
}
