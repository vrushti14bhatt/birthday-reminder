import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class BirthdayCardscreen extends StatefulWidget {
  const BirthdayCardscreen({Key? key}) : super(key: key);

  @override
  State<BirthdayCardscreen> createState() => _BirthdayCardscreenState();
}

class _BirthdayCardscreenState extends State<BirthdayCardscreen> {

  List<dynamic> cardlist = [];

  setCardListData(){
    cardlist.add(Image.asset('assets/appimages/i1.png', fit: BoxFit.fill,));
    // cardlist.add(Image.asset('assets/appimages/i2.png', fit: BoxFit.fill,));
    // cardlist.add(Image.asset('assets/appimages/i3.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i4.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i5.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i6.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i7.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i8.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i9.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i10.png', fit: BoxFit.fill,));
    cardlist.add(Image.asset('assets/appimages/i11.png', fit: BoxFit.fill,));
  }

  Widget cardListCell(int index, List<dynamic> item){
    return Card(
      elevation: 2.0,
      child: Container(
        padding: EdgeInsets.all(10.0),
        /*height: 40,
        width: 40,*/
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white24
        ),
        // child: item[index],
        child: Stack(
          children: [
            item[index],
            Positioned(right: 2,child: Container(color: Colors.black87,
              padding: EdgeInsets.all(3.0),
              child: InkWell(
                onTap: () {
                  Share.share(item[index]);
                },
                child: Icon(Icons.send, color: Colors.white,),
              ),))
          ],
        ),
      ),
    );
  }


  @override
  void initState() {
    setCardListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        title: Text('Cards'),
      ),
      /*body: Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              GridView.builder(
                itemCount: cardlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0
                ),
                itemBuilder: (BuildContext context, int index){
                  return cardListCell(index, cardlist);
                },
              ),
            ],
          ),
        ),*/
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          itemCount: cardlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0
          ),
          itemBuilder: (BuildContext context, int index){
            return cardListCell(index, cardlist);
          },
        ),
      ),
    );
  }
}
