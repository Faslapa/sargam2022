import 'package:flutter/material.dart';
import 'package:online_food_ordering_web/model.dart/responsive.dart';

import '../../../constants.dart';
import 'menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Row(
      children: [
        // it  display only on mobile and tab
        //not working

        if (Responsive.isDesktop(context))
        const Text(
          "Sargam 2022",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 4, 48, 85)),
        ),
        if (!Responsive.isDesktop(context))
        Container(
          height: _size.height*0.05,child: Image.asset('assets/images/logo.png',)),

        Spacer(),
        //menu
        if (Responsive.isDesktop(context)) HeaderWebMenu(),
       

        
      ],
    );
  }
}
