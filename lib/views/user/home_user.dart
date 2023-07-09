import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pepper/consts/consts.dart';
import 'package:pepper/controllers/home_controller.dart';
import 'package:pepper/views/user/account.dart';
import 'package:pepper/views/user/cart.dart';
import 'package:pepper/views/user/home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({super.key});

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 30,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icAccount,
            width: 30,
          ),
          label: "Account"),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 30,
          ),
          label: "Cart"),
    ];
    var navBody = [HomeScreen(), AccountUser(), Cart()];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        toolbarHeight: Vx.dp32,
        flexibleSpace: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: const Icon(Icons.menu),
            ),
            Tab(
                icon: Image.asset(
                  iconVeg,
                  color: spGreen,
                ),
                text: 'Veg'),
            Tab(
              icon: Image.asset(
                iconNon,
              ),
              text: 'Non Veg',
            ),
            Tab(
                icon: Image.asset(
                  iconmaps,
                ),
                text: 'Map'),
          ],
          labelColor: Colors.black,
          dividerColor: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 50.0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ), //AppBar
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            backgroundColor: spGreen,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(fontFamily: regular),
            type: BottomNavigationBarType.fixed,
            items: navbarItem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          )),
    );
  }
}
