import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_app/ui/screens/home/home_screen.dart';
import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(2),
          topRight: Radius.circular(2),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                // icon: SvgPicture.asset(
                //   "assets/icons/Shop Icon.svg",
                //   color: MenuState.home == selectedMenu
                //       ? kPrimaryColor
                //       : inActiveIconColor,
                // ),
                icon: Icon(Icons.home_outlined,
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                  // icon: SvgPicture.asset("assets/icons/Parcel.svg"),
                  // onPressed: () {},
                  icon: Icon(Icons.shopping_bag)),
              IconButton(
                icon: Icon(Icons.store),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.badge_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}
