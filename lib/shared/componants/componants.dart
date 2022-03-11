import 'package:daily_exercises_app/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

Widget defaultCard (context,{
  required String icon,
  required String text,
  required VoidCallback press,
}) =>  ClipRRect(
  borderRadius: BorderRadius.circular(13),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(13),
      boxShadow:
      const [
        BoxShadow(offset: Offset(0, 17),
          blurRadius: 17.0,
          spreadRadius: -23,
          color: shadowColor,

        ),
      ],

    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:
            [
              const Spacer(),
              SvgPicture.asset(icon),
              const Spacer(),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(
                  fontSize: 13.0,
                ),
                textAlign: TextAlign.center,

              ),
            ],
          ),
        ),
      ),
    ),
    // padding: const EdgeInsets.all(20),
  ),
);


Widget defaultBottomNavItem ({
  required String text,
  required String icon,
  required VoidCallback press,
  bool isActive = false,
}) => GestureDetector(
  onTap: press,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,

    children:
    [
      SvgPicture.asset(icon , color: isActive ? activeIconColor : textColor,),
      Text(
        text,
        style: TextStyle(color: isActive ? activeIconColor : textColor),
      ),
    ],
  ),
);

Widget defaultBottomNavBar (context) => Container(
  padding: const EdgeInsets.symmetric(
    horizontal: 40.0,
    vertical: 10.0,
  ),
  height: 80.0,
  color: Colors.white,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:
    [
      defaultBottomNavItem(
        text: 'Today',
        icon: 'assets/icons/calendar.svg',
        press: (){},
      ),
      defaultBottomNavItem(
        text: 'All Exercises',
        icon: 'assets/icons/gym.svg',
        press: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return DetailsScreen();
          }));
        },
        isActive: true,
      ),
      defaultBottomNavItem(
        text: 'Settings',
        icon: 'assets/icons/Settings.svg',
        press: (){},
      ),
    ],
  ),
);

Widget defaultSearchBar () => Container(
  padding: const EdgeInsets.symmetric(
      horizontal: 30.0,
      vertical: 5.0
  ),
  margin: const EdgeInsets.symmetric(
    vertical: 30.0,
  ),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(29.5),
  ),
  child: TextField(
    decoration: InputDecoration(
      hintText: 'Search',
      icon: SvgPicture.asset('assets/icons/search.svg'),
      border: InputBorder.none,
    ),
  ),
);

