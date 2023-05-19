import 'package:birthday_reminder/screens/birthday_card_screen.dart';
import 'package:birthday_reminder/screens/birthday_wishes_screen.dart';
import 'package:birthday_reminder/screens/nou_aniversari_screen.dart';
import 'package:flutter/material.dart';

class LateralMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/app_icon.png',
                    fit: BoxFit.cover,
                    height: 60,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Birthday Reminder',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                      height: .95,
                      color: Colors.blue.shade500
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Birthdays',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade500
              ),
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              leading: Icon(
                Icons.menu, color: Colors.blue.shade500,
              ),
              title: Text(
                'All',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade500
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return BirthdayWishesScreen();
                    },
                  ),
                );
              },
              child: ListTile(
                dense: true,
                minLeadingWidth: 10,
                contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                leading: Icon(
                  Icons.arrow_forward_ios_rounded, color: Colors.blue.shade500,
                ),
                title: Text(
                  'Wishes',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.shade500
                  ),
                ),
              ),
            ),
            /*InkWell(
              onTap: (){
                Navigator.of(context).pop();

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return BirthdayCardscreen();
                    },
                  ),
                );
              },
              child: ListTile(
                dense: true,
                minLeadingWidth: 10,
                contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                leading: Icon(
                  Icons.arrow_forward_ios_rounded, color: Colors.blue.shade500,
                ),
                title: Text(
                  'Cards',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.shade500
                  ),
                ),
              ),
            ),*/
            /*ListTile(
              dense: true,
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              leading: Icon(
                Icons.arrow_forward_ios_rounded,
              ),
              title: Text(
                'Work',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),*/
            InkWell(
              onTap: () {
                Navigator.of(context).pop();

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) {
                      return NouAniversariScreen(editando: false);
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border:
                  Border.all(color: Theme.of(context).primaryColorLight),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                height: 50,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Center(
                  child: const Text(
                    'ADD BIRTHDAY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              leading: Icon(Icons.settings_outlined, color: Colors.blue.shade500,),
              title: Text(
                'Settings',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade500
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/settings');
              },
            ),
            ListTile(
              dense: true,
              minLeadingWidth: 10,
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              leading: Icon(Icons.power_settings_new, color: Colors.blue.shade500,),
              title: Text(
                'Logout',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade500
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}