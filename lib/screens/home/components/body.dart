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
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue),
            ),
            Soloevents(
              icon: Icons.menu_book_rounded,
              title: 'General Literary Events',
              productlist: literaryevents,
            ),
            Soloevents(
              icon: Icons.menu_book_rounded,
              productlist: newlaunchevents,
              title: 'Sargam 2022 Newly Launched',
            ),
            Soloevents(
              icon: Icons.music_note_outlined,
              productlist: musicevents,
              title: 'Music Events',
            ),
            Soloevents(
              icon: Icons.theaters,
              productlist: theatreevents,
              title: 'Theatre Events',
            ),
            Soloevents(
              icon: Icons.palette,
              productlist: fineartsevents,
              title: 'Fine Arts Events',
            ),
            Soloevents(
              icon: Icons.emoji_people,
              productlist: danceevents,
              title: 'Dance Events',
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'GROUP EVENTS',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue),
            ),
            GroupEvents(
                icon: Icons.music_note,
                productlist: groupMusicEvents,
                title: 'Music Events'),
            GroupEvents(
                icon: Icons.emoji_people,
                productlist: groupDanceEvents,
                title: 'Dance Events'),
            GroupEvents(
                icon: Icons.theaters,
                productlist: theatregroupevents,
                title: 'Theatre Events')
          ],
        ));
  }
}
