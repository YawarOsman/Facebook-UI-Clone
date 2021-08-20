
import 'package:facebookk/classes/classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  List menu=[
    MenuItems(name: 'Ipad pro 10.5',image: 'assets/menu/marketplace.png'),
    MenuItems(name: 'Groups',image: 'assets/menu/groups.png'),
    MenuItems(name: 'Saved',image: 'assets/menu/saved.png'),
    MenuItems(name: 'Friends',image: 'assets/menu/friends.png'),
    MenuItems(name: 'Marketplace',image: 'assets/menu/marketplace.png'),
    MenuItems(name: 'Gaming',image: 'assets/menu/gaming.png'),
    MenuItems(name: 'Pages',image: 'assets/menu/pages.png'),
    MenuItems(name: 'Jobs',image: 'assets/menu/jobs.png'),
    MenuItems(name: 'Events',image: 'assets/menu/events.png'),
    MenuItems(name: 'Memories',image: 'assets/menu/memories.png'),
    MenuItems(name: 'COVID-19 Information Center',image: 'assets/menu/covid.png'),
    MenuItems(name: 'Community Help',image: 'assets/menu/community.png'),
    MenuItems(name: 'Favourities',image: 'assets/menu/favourities.png'),
    MenuItems(name: 'Fundraisers',image: 'assets/menu/fundraisers.png'),
    MenuItems(name: 'Emotional Health',image: 'assets/menu/health.png'),
    MenuItems(name: 'Messenger Kids',image: 'assets/menu/kids.png'),
    MenuItems(name: 'Live Videos',image: 'assets/menu/live.png'),
    MenuItems(name: 'Offers',image: 'assets/menu/offers.png'),
    MenuItems(name: 'Facebook Pay',image: 'assets/menu/pay.png'),
    MenuItems(name: 'Videos on Watch',image: 'assets/menu/watch.png'),
    MenuItems(name: 'Weather',image: 'assets/menu/weather.png'),
    MenuItems(name: 'Nearby Friends',image: 'assets/menu/friends.png'),

  ];

  int items=12;
  String see='See more';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg'),radius: 20,),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Yawar Osman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                          SizedBox(height: 2,),
                          Text('See your profile',style: MyStyle().copyWith(fontSize: 15),),


                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 10),
                    child: Container(width: double.infinity,height: 0.3,color: Colors.white,),
                  ),

                  StaggeredGridView.countBuilder(
                      shrinkWrap: true,physics: ScrollPhysics(),itemCount: items,
                      crossAxisCount: 2, mainAxisSpacing: 1, crossAxisSpacing: 5,
                      itemBuilder: (context,index){
                        return Column(
                                      children: [
                                        Container(
                                            width: mediaQuery.size.width/2.2,
                                            height: index==0?190:null,
                                            decoration: BoxDecoration(
                                                color: Colors.white12,
                                                borderRadius: BorderRadius.circular(9)
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                if (index==0) Stack(
                                                  children: [
                                                    ClipRRect(
                                                      child: Image(image: AssetImage('assets/ipad3.jpg'),fit: BoxFit.cover,),
                                                      borderRadius: BorderRadius.only(topRight: Radius.circular(9),topLeft: Radius.circular(9)),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 85,left: 14),
                                                      child: CircleAvatar(
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(4.0),
                                                          child: Image(
                                                            image: AssetImage(menu[0].image),),
                                                        ),radius: 15,),
                                                    )
                                                  ],
                                                ) else SizedBox(),
                                                Padding(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      index!=0?Container(
                                                        child: Image(image: AssetImage(menu[index].image),),
                                                        width: 28,height: 28,
                                                      ):Text('cheapest price'),
                                                      SizedBox(height: 5,),
                                                      Text(menu[index].name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 0.4),)

                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                        ),
                                        SizedBox(height: 7,)
                                      ],
                                    );
                      },
                      staggeredTileBuilder: (index){
                        return StaggeredTile.fit(1);
                      }
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    child: Container(
                      width: mediaQuery.size.width,height: 37,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(6)
                      ),child: Text('$see',style: TextStyle(fontSize: 15),),alignment: Alignment.center,
                    ),onTap: (){
                    setState(() {
                      if(items==12){
                        items=menu.length;see='See less';
                      }else{
                        items=12;see='See more';
                      }

                      print('okkkkkk');
                    });
                  },
                  ),


                ],
              ),
            ),SizedBox(height: 5,),
            Column(
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 10),
                  child: Container(width: double.infinity,height: 0.3,color: Colors.white,),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Text('?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        backgroundColor: Colors.cyan.shade100,radius: 15,
                      ),
                      Text('   Help & support',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                      Spacer(), Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),

                Padding(
                  padding:EdgeInsets.symmetric(vertical: 10),
                  child: Container(width: double.infinity,height: 0.3,color: Colors.white,),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    children: [
                      Icon(Icons.settings_sharp,color: Colors.cyan.shade100,size: 30,),
                      Text('   Settings & privacy',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                      Spacer(), Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15,left: 13,right: 13),
                  child: FlatButton(
                    onPressed: (){},child: Text('Log Out',style: TextStyle(fontSize: 17),),
                    color: Colors.white12,minWidth: double.infinity,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),height: 37,
                  ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
