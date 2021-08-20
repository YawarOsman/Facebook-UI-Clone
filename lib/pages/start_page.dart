import 'package:facebookk/assets/messenger.dart';
import 'package:facebookk/pages/market_place.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'friend_request.dart';
import 'home.dart';
import 'menu.dart';
import 'notifications.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin{

  late TabController controller;
  double appBar=45;
  double bottomAppBar=0.3;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller.addListener(() {
      setState(() {
        if(controller.index==0)
          bottomAppBar=0.3;
        else
          bottomAppBar=48;
      });
    });

  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: ( context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                toolbarHeight: appBar,
                actions:[
                  Container(alignment: Alignment.center,padding: EdgeInsets.only(left: 10),
                    child: Text('facebook',style: TextStyle(fontFamily: "Klavika",fontSize: 30),),),
                  Spacer(),
                  Container(width: 90,
                 child: Row(
                    children: [
                      CircleAvatar(child: Icon(Icons.search,color: Colors.white,size: 23,),backgroundColor: Colors.white12,radius: 18,),
                      SizedBox(width: 10,),
                      CircleAvatar(child: Icon(Messenger.facebook_messenger,color: Colors.white,size: 20,),backgroundColor: Colors.white12,radius: 18)

                    ],
                  ))
                ],
                pinned: false,
                floating: true,snap: true,


              ),
              SliverAppBar(
                toolbarHeight: 48,
                pinned: true,
                title: TabBar(
                  controller: controller,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.white70,
                  tabs: [//Icon(controller.index==0?Icons.home:Icons.home_outlined,size: 30,)
                    Tab(child: IconButton(icon: Image(image: controller.index==0?AssetImage('assets/home.png'):AssetImage('assets/home_outlined.png'),),
                      onPressed: (){controller.index=0;setState(() {
                      appBar=45;
                    });},)),
                    Tab(child: IconButton(icon: Image(image: controller.index==1?AssetImage('assets/person.png'):AssetImage('assets/person_outlined.png'),),
                      onPressed: (){controller.index=1;setState(() {
                      appBar=0;
                    });},)),
                    Tab(child: IconButton(icon: Image(image: controller.index==2?AssetImage('assets/Marketplace.png'):AssetImage('assets/marketplace_outlined.png'),),
                      onPressed: (){controller.index=2;setState(() {
                      appBar=0;
                    });},)),
                    Tab(child: IconButton(icon: Image(image: controller.index==3?AssetImage('assets/Notification.png'):AssetImage('assets/notification_outlined.png'),),
                      onPressed: (){controller.index=3;setState(() {
                      appBar=0;
                    });},)),
                    Tab(child: IconButton(icon: Image(image: controller.index==4?AssetImage('assets/humburger.png'):AssetImage('assets/humburger_outlined.png'),),
                      onPressed: (){controller.index=4;setState(() {
                      appBar=0;
                    });},)),

                  ],
                ),
                bottom: PreferredSize(
                   preferredSize: Size.fromHeight(bottomAppBar)
                  , child: Column(
                  children: [
                    Container(height: 0.4,color: Colors.white,),

                    controller.index==1?Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Friends',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,))
                        ],),
                    ):controller.index==2? Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Row(
                        children: [
                          Text('Marketplace',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Spacer(),IconButton(onPressed: (){}, icon: Icon(Icons.person,size: 25)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 25,)),
                        ],
                      ),
                    ):controller.index==3? Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Row(
                        children: [
                          Text('Notifications',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Spacer(),IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 25,)),
                        ],
                      ),
                    ):controller.index==4? Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Row(
                        children: [
                          Text('Menu',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          Spacer(), IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 25,)),
                        ],
                      ),
                    ):SizedBox()

                  ],
                ),
                ),
              )
            ];
          },
          body: TabBarView(
            controller: controller,
            children: [
              Home(),
              FriendRequest(),
              MarketPlace(),
              Notifications(),
              Menu(),
            ],
          ),
        )
    );


  }
}
