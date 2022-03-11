import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../shared/componants/componants.dart';

class HomeLayOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: defaultBottomNavBar(context),
      body: Stack(
        children:
        [
          Container(
            height: size.height* .45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEBB),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),

              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Align(
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                    alignment: Alignment.topRight,
                  ),
                  Text(
                    'Good Morning \nShishir',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w900,

                    ),

                  ),
                  defaultSearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children:
                      [
                       defaultCard(
                           context,
                           icon: 'assets/icons/Hamburger.svg',
                           text: 'Diet Recommendation',
                           press: (){},
                       ),
                        defaultCard(
                            context,
                            icon: 'assets/icons/Excrecises.svg',
                            text: 'Kegal Exercises',
                            press: (){},
                        ),
                        defaultCard(
                            context,
                            icon: 'assets/icons/Meditation.svg',
                            text: 'Meditation',
                            press: (){},
                        ),
                        defaultCard(
                            context,
                            icon: 'assets/icons/yoga.svg',
                            text: 'Yoga',
                            press: (){},
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
