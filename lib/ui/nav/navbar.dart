import 'package:flutter/material.dart';
import 'package:untitled/ui/nav/fav.dart';
import 'package:untitled/ui/home/model/homepage.dart';
import 'package:untitled/ui/nav/profile.dart';
import 'package:untitled/ui/nav/shop.dart';
import 'package:untitled/ui/nav/wish.dart';
class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

List<Widget> pages=const[
  HomePage(),
  Wish(),
  Fav(),
  Shop(),
  Profile(),
];
int current_index = 0;
PageController controller = PageController();
class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  PageView(
        children: pages,
        controller: controller,
        onPageChanged: (nextIndex){
          setState(() {
            current_index=nextIndex;
          });
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 55,
        child: BottomNavigationBar(
          selectedItemColor: Colors.yellow.shade700,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              current_index = index;
              controller.jumpToPage(index);
            });
          },
          currentIndex: current_index,
          items:const[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "")
          ],
        ),
      ),
    );
  }
}
