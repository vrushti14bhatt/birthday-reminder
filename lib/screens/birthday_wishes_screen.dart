import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class BirthdayWishesScreen extends StatefulWidget {
  const BirthdayWishesScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayWishesScreen> createState() => _BirthdayWishesScreenState();
}

class _BirthdayWishesScreenState extends State<BirthdayWishesScreen> {

  List<dynamic> wisheslist = [];

  setWishesListData(){
    wisheslist.add('Many many Happy returns of the Day!! Happy Birthday dear!');
    wisheslist.add('May the joy you have spread in the past come back to you on this day.Wishing you happy birthday!');
    wisheslist.add('A wish for you on your birthday,whatever you ask may you receive,whatever you seek may you find,whatever you wish may it be fulfilled on your birthday and always.Happy birthday!');
    wisheslist.add('May this special day bring you endless joy and tons of precious memories!');
    wisheslist.add('Wishing you a day filled with happiness and a year filled with joy.Happy birthda!');
    wisheslist.add('Happy birthday! I hope all your birthday wishes and dreams come true!');
    wisheslist.add('Count your life by smiles, not tears. Count your age by friends, not years. Happy birthday!');
    wisheslist.add('Another adventure filled year awaits you. Welcome it by celebrating your birthday with pomp and splendor. Wishing you a very happy and fun-filled birthday!');
    wisheslist.add('Happy birthday! Your life is just about to pick up speed and blast off into the stratosphere. Wear a seat belt and be sure to enjoy the journey. Happy birthday!');
    wisheslist.add('Count not the candles…see the lights they give. Count not the years, but the life you live. Wishing you a wonderful time ahead. Happy birthday.');
    wisheslist.add('Your birthday is the first day of another 365-day journey. Be the shining thread in the beautiful tapestry of the world to make this year the best ever. Enjoy the ride.');
    wisheslist.add('Be happy! Today is the day you were brought into this world to be a blessing and inspiration to the people around you! You are a wonderful person! May you be given more birthdays to fulfill all of your dreams!');
    wisheslist.add('Don’t get all weird about getting older! Our age is merely the number of years the world has been enjoying us!');
    wisheslist.add('Happy birthday to someone who is forever young!');
    wisheslist.add('Just wanted to be the first one to wish you happy birthday so I can feel superior to your other well-wishers. So, happy birthday!');
    wisheslist.add('Congratulations on being even more experienced. I’m not sure what you learned this year, but every experience transforms us into the people we are today. Happy birthday!');
    wisheslist.add('It’s a smile from me… To wish you a day that brings the same kind of happiness and joy that you bring to me. Happy birthday!');
    wisheslist.add('Sending you a birthday wish wrapped with all my love. Have a very happy birthday!');
  }

  Widget wishListCell(int index, List<dynamic> item){
    return Card(
      elevation: 2.0,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(child: Text(item[index])),
            SizedBox(width: 5.0,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.black87
              ),
              padding: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Share.share(item[index]);
                },
                child: Icon(Icons.send, color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    setWishesListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        title: Text('Wishes'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ListView.builder(
              physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: wisheslist.length,
          itemBuilder: (context, index) {
            return wishListCell(index, wisheslist);
          },
        )
            ],
          ),
        ),
      ),
    );
  }
}
