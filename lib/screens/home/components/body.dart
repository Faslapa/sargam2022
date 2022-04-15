import 'package:flutter/material.dart';
import 'package:online_food_ordering_web/model.dart/product_model.dart';
import 'package:online_food_ordering_web/screens/home/components/groupevents.dart';
import '../../../constants.dart';
import 'package:online_food_ordering_web/screens/home/components/soloevents.dart';
import '../../../model.dart/product_model.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(kPadding),
        constraints: BoxConstraints(maxWidth: kMaxWidth),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'SOLO EVENTS',
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue),
            ),
            Soloevents(
              title: 'General Literary Events',
              productlist: literaryevents,
            ),
            Soloevents(
              productlist: musicevents,
              title: 'Music Events',
            ),
            Soloevents(
              productlist: newlaunchevents,
              title: 'Sargam 2022 Newly Launched',
            ),
            Soloevents(
              productlist: theatreevents,
              title: 'Theatre Events',
            ),
            Soloevents(
              productlist: fineartsevents,
              title: 'Fine Arts Events',
            ),
            Soloevents(
              productlist: danceevents,
              title: 'Dance Events',
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'GROUP EVENTS',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue),
            ),
            GroupEvents(productlist: groupMusicEvents, title: 'Music Events'),
            GroupEvents(productlist: groupDanceEvents, title: 'Dance Events'),
            GroupEvents(
                productlist: theatregroupevents, title: 'Theatre Events')
          ],
        ));
  }
}
