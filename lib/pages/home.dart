
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:facebookk/assets/comment.dart';
import 'package:facebookk/assets/music.dart';
import 'package:facebookk/assets/reaction.dart';
import 'package:facebookk/classes/classes.dart';
import 'package:facebookk/pages/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double Wportrate=mediaQuery.size.width / 3.3;
    double Wnoportrate=mediaQuery.size.height / 3.43;

    double Hportrate=mediaQuery.size.height / 3.9;
    double Hnoportrate=mediaQuery.size.width / 4;

    return Scaffold(
      backgroundColor: Colors.black26,
      body: OrientationBuilder(
        builder: (context,orientation) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.jpg'),
                        radius: 19,),
                      SizedBox(width: 6,),
                      Expanded(
                        child: GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                width: mediaQuery.size.width / 1.11, height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.9, color: Colors.white70),
                                    borderRadius: BorderRadius.circular(50)
                                ),),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 8),
                                  child: Text('What\'s on your mind?',
                                    style: MyStyle().copyWith(fontSize: 17),)
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) {
                              return Post();
                            }));
                          },
                        ),
                      ),


                    ],
                  ),
                ),
                Container(
                  width: double.infinity, height: 0.4, color: Colors.white,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.video_call_rounded, size: 24, color: Colors
                              .red,),
                          Text(' Live', style: MyStyle(),)
                        ],
                      ),
                      Container(height: 20, width: 0.2, color: Colors.white,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.image_outlined, size: 22, color: Colors
                              .green,),
                          Text(' Photo', style: MyStyle(),)
                        ],
                      ),
                      Container(height: 20, width: 0.2, color: Colors.white,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.video_call_rounded, size: 24, color: Colors
                              .purple.shade400,),
                          Text(' Room', style: MyStyle(),)
                        ],
                      ),

                    ],
                  ),
                ),
                Container(
                  width: double.infinity, height: 6, color: Colors.black45,),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Audio and video rooms', style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),),
                      SizedBox(height: 8,),
                      Container(
                        height: 33, width: friendRequest.length * 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: friendRequest.length,
                            itemBuilder: (context, index) {
                              return index == 0 ? Row(
                                children: [
                                  FlatButton(padding: EdgeInsets.symmetric(
                                      horizontal: 7),
                                    height: 40,

                                    minWidth: orientation==Orientation.portrait?
                                    Wportrate:Wnoportrate,

                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    onPressed: () {},
                                    color: Color(0xff224466),
                                    child: Text('Create Room', style: TextStyle(
                                        color: Color(0xff5a98fc),
                                        fontSize: 15),),),
                                  SizedBox(width: 5,)
                                ],
                              ) :
                              CircleAvatar(backgroundImage: AssetImage(
                                  friendRequest[index].image), radius: 23,);
                            }),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity, height: 6, color: Colors.black45,),

                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: mediaQuery.size.height / 80),
                  height: orientation == Orientation.portrait?
                  Hportrate:Hnoportrate,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: friendRequest.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 3.5,),

                                  height: orientation == Orientation.portrait?
                                  Hportrate:Hnoportrate,

                                  width: index == 0 ? 8 : orientation == Orientation.portrait?
                                  Wportrate:Wnoportrate,

                                  child: index == 0 ?
                                  Container():
                                  index == 1 ?
/*this is Music box*/             ClipRRect(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                12),
                                            gradient: LinearGradient(colors: [
                                              Colors.greenAccent,
                                              Colors.blue,
                                            ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,

                                            )
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            CircleAvatar(child: Icon(
                                              Music.music, size: 21,),
                                              backgroundColor: Colors.white,
                                              radius: 24,),
                                            SizedBox(height: 9,),
                                            Text('Music',
                                              style: TextStyle(fontSize: 17),)
                                          ],
                                        ),
                                      )

                                  ) :
                                  index == 2 ?
/*this is my profiles image*/     Stack(
                                    children: [
                                      Container(decoration: BoxDecoration(
                                        color: Colors.white10,
                                        borderRadius: BorderRadius.circular(
                                            12),),
                                        width: orientation == Orientation.portrait?
                                        Wportrate:Wnoportrate,

                                        height: orientation == Orientation.portrait?
                                        Hportrate:Hnoportrate,
                                      ),

                                      Container(  //this is the size of my profile
                                        height: orientation == Orientation.portrait?
                                        Hportrate/1.6:Hnoportrate/1.65,
                                        width: orientation == Orientation.portrait?
                                        Wportrate:Wnoportrate,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(12),
                                              topLeft: Radius.circular(12)),
                                          child: Image(image: AssetImage(
                                              'assets/profile.jpg'),
                                            fit: BoxFit.cover,),
                                        ),
                                      ),

                                      Padding( //this is the blue add icon
                                        padding: EdgeInsets.only(
                                            top: orientation == Orientation.portrait?
                                            mediaQuery.size.height / 7.8:mediaQuery.size.height / 3.8,

                                            left: orientation == Orientation.portrait?
                                            mediaQuery.size.width / 12:mediaQuery.size.height / 13),

                                        child: CircleAvatar(
                                          backgroundColor: Colors.black26,
                                          child: CircleAvatar(
                                            child: Icon(Icons.add, size: 30,
                                              color: Colors.white,),
                                            backgroundColor: Color(0xff2d88ff),
                                            radius: 20),
                                          radius: 23),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: orientation == Orientation.portrait?
                                            mediaQuery.size.height / 4.8:mediaQuery.size.height / 2.18,

                                            left: orientation == Orientation.portrait?
                                        mediaQuery.size.width / 14:mediaQuery.size.height / 17),

                                        child: Text('Create story',
                                          style: TextStyle(
                                              fontSize:  orientation == Orientation.portrait?
                                              mediaQuery.size.width / 40:mediaQuery.size.width / 80),),
                                      )
                                    ],
                                  ) :
 /*this is the peopls story*/     ClipRRect(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              12),
                                        ),
                                        child: Stack(
                                          children: [
                                            ClipRRect(borderRadius: BorderRadius
                                                .circular(12),
                                              child: Container(
                                                height: orientation == Orientation.portrait?
                                                Hportrate:Hnoportrate,
                                                width: orientation == Orientation.portrait?
                                                Wportrate:Wnoportrate,
                                                child: Image(image: AssetImage(
                                                    friendRequest[index].image),
                                                  fit: BoxFit.cover,),
                                              ),
                                            ),
                                            Padding(
                                              padding:  EdgeInsets.all(orientation==Orientation.portrait?
                                              mediaQuery.size.width / 60:mediaQuery.size.height / 60),
                                              child: Container(
                                                width: mediaQuery.size.width /
                                                    10,
                                                height: mediaQuery.size.width /
                                                    10,
                                                child: Stack(
                                                    children: [
                                                      Container(
                                                        width: 38, height: 38,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                width: 2,
                                                                color: Colors
                                                                    .blue),
                                                            borderRadius: BorderRadius
                                                                .circular(50)
                                                        ),

                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            orientation==Orientation.portrait?
                                                            mediaQuery.size.width / 130:mediaQuery.size.height / 130),
                                                        child: CircleAvatar(
                                                          radius: 16,
                                                          backgroundImage: AssetImage(
                                                              friendRequest[index].image),
                                                        ),
                                                      ),
                                                    ]
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: orientation == Orientation.portrait?
                                                  mediaQuery.size.height / 4.85:mediaQuery.size.height / 2.2,

                                                  left: orientation == Orientation.portrait?
                                                  mediaQuery.size.width / 80:mediaQuery.size.width / 100,),

                                              child: Text(
                                                '${friendRequest[index].name}',
                                                style: TextStyle(
                                                    fontSize: orientation == Orientation.portrait?
                                                    mediaQuery.size.width / 31:mediaQuery.size.width / 65,
                                                    fontWeight: FontWeight
                                                        .bold),
                                                overflow: TextOverflow
                                                    .ellipsis,),
                                            )
                                          ],
                                        ),
                                      )

                                  )
                              ),
                            ],
                          ),
                        );
                      }),
                ),

                Container(
                  width: double.infinity, height: 12, color: Colors.black45,),

                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: friendRequest.length,
                  crossAxisCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,),
                          child: Row(
                            children: [
                              CircleAvatar(backgroundImage: AssetImage(
                                  friendRequest[index].image),),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Container(
                                    width: mediaQuery.size.width / 1.21,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text(friendRequest[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19),),
                                        Icon(Icons.more_horiz)
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text('${DateTime
                                          .now()
                                          .difference(friendRequest[index].date)
                                          .inDays
                                          .toString()} ',
                                        style: MyStyle().copyWith(
                                            fontSize: 13),),
                                      CircleAvatar(radius: 1.5,
                                        backgroundColor: Colors.white54,),
                                      SizedBox(width: 4,),
                                      Icon(Icons.access_time, size: 14,
                                        color: Colors.white54,)
                                    ],
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                        SaleItems[index].details != '' ? Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 17, bottom: 8),
                          child: Text('${SaleItems[index].details}',
                            style: TextStyle(fontSize: 16),),) : SizedBox(
                          height: 13,),
                        ClipRRect(
                          child: Container(
                            width: double.infinity,
                            child: Image(
                              image: AssetImage(SaleItems[index].image),
                              fit: BoxFit.cover,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: CircleAvatar(
                                                child: CircleAvatar(child: Icon(
                                                  Reactions.heart,
                                                  color: Colors.white,
                                                  size: 11,),
                                                  backgroundColor: Colors.red,
                                                  radius: 7,), radius: 9.5,),
                                            ),
                                            CircleAvatar(
                                              child: CircleAvatar(child: Icon(
                                                Reactions.thumbs_up_alt,
                                                color: Colors.white, size: 10,),
                                                backgroundColor: Color(
                                                    0xff282fff), radius: 7,),
                                              backgroundColor: Colors.black12,
                                              radius: 9.5,),

                                          ],
                                        ),
                                        Text(' 954', style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('6 comments . 4 shares',
                                          style: TextStyle(fontSize: 12,
                                              color: Colors.white70),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(width: double.infinity,
                                height: 0.3,
                                color: Colors.white,),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,
                                  children: [

                                    FlutterReactionButton(
                                        onReactionChanged: (reaction,
                                            isChecked) {

                                        },
                                        reactions: <Reaction>[

                                          Reaction(
                                            icon: Row(
                                              children: [
                                                Icon(Reactions.thumbs_up_alt,
                                                  size: 20,
                                                  color: Colors.blue,),
                                                Text(' Like', style: TextStyle(
                                                    color: Colors.blue),)
                                              ],
                                            ),
                                            previewIcon: Row(
                                              children: [
                                                SizedBox(width: 5,),
                                                Container(
                                                    width: 40, height: 40,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/liked.png'))),
                                              ],
                                            ),
                                          ),

                                          Reaction(
                                            icon: Row(
                                              children: [
                                                Container(
                                                    width: 20, height: 20,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/love.png'))),
                                                Text(' love', style: TextStyle(
                                                    color: Colors.red),)
                                              ],
                                            ),
                                            previewIcon: Container(
                                                width: 40, height: 40,
                                                child: Image(image: AssetImage(
                                                    'assets/reactions/love.png'))),
                                          ),

                                          Reaction(
                                            icon: Row(
                                              children: [
                                                Container(
                                                    width: 20, height: 20,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/care.png'))),
                                                Text(' care', style: TextStyle(
                                                    color: Colors.orange
                                                        .shade200),)
                                              ],
                                            ),
                                            previewIcon: Container(
                                                width: 40, height: 40,
                                                child: Image(image: AssetImage(
                                                    'assets/reactions/care.png'))),
                                          ),

                                          Reaction(
                                            icon: Row(
                                              children: [
                                                Container(
                                                    width: 20, height: 20,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/haha.png'))),
                                                Text(' haha', style: TextStyle(
                                                    color: Colors.orange
                                                        .shade200),)
                                              ],
                                            ),
                                            previewIcon: Container(
                                                width: 40, height: 40,
                                                child: Image(image: AssetImage(
                                                    'assets/reactions/haha.png'))),
                                          ),

                                          Reaction(
                                            icon: Row(
                                              children: [
                                                Container(
                                                    width: 20, height: 20,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/woo.png'))),
                                                Text(' wow', style: TextStyle(
                                                    color: Colors.orange
                                                        .shade200),)
                                              ],
                                            ),
                                            previewIcon: Container(
                                                width: 40, height: 40,
                                                child: Image(image: AssetImage(
                                                    'assets/reactions/woo.png'))),
                                          ),

                                          Reaction(
                                            icon: Row(
                                              children: [
                                                Container(
                                                    width: 20, height: 20,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/sad.png'))),
                                                Text(' sad', style: TextStyle(
                                                    color: Colors.orange
                                                        .shade200),)
                                              ],
                                            ),
                                            previewIcon: Container(
                                                width: 40, height: 40,
                                                child: Image(image: AssetImage(
                                                    'assets/reactions/sad.png'))),
                                          ),

                                          Reaction(
                                            icon: Row(
                                              children: [
                                                Container(
                                                    width: 20, height: 20,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/angry.png'))),
                                                Text(' angry', style: TextStyle(
                                                    color: Colors
                                                        .deepOrangeAccent),)
                                              ],
                                            ),
                                            previewIcon: Row(
                                              children: [
                                                Container(
                                                    width: 40, height: 40,
                                                    child: Image(
                                                        image: AssetImage(
                                                            'assets/reactions/angry.png'))),
                                                SizedBox(width: 5,)
                                              ],
                                            ),
                                          ),

                                        ],

                                        initialReaction: Reaction(
                                          icon: Row(
                                            children: [
                                              Icon(
                                                  Reactions.thumbs_up, size: 20,
                                                  color: Colors.white70),
                                              Text(' Like', style: TextStyle(
                                                  color: Colors.white70),)
                                            ],
                                          ),
                                        ),
                                        boxAlignment: AlignmentDirectional
                                            .centerStart,
                                        boxColor: Colors.grey.shade800

                                    ),

                                    // Row(
                                    //   children: [
                                    //     GestureDetector(onTap: (){}, child: Icon(Reactions.thumbs_up,color: Colors.white70,size: 20,)),
                                    //     Text('  Like',style: TextStyle(color: Colors.white70),)
                                    //   ],
                                    // ),

                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        GestureDetector(onTap: () {},
                                            child: Icon(Comment.comment,
                                              color: Colors.white70,
                                              size: 20,)),
                                        Text(' Comment', style: TextStyle(
                                            color: Colors.white70),)
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        GestureDetector(onTap: () {},
                                            child: ClipRRect(child: Container(
                                                width: 20, height: 20,
                                                child: Image(image: AssetImage(
                                                    'assets/share.png'),)))),
                                        Text(' Share', style: TextStyle(
                                            color: Colors.white70),)
                                      ],
                                    ),


                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(width: double.infinity,
                          height: 11,
                          color: Colors.black45,),
                      ],
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return StaggeredTile.fit(1);
                  },

                ),


                Container(
                  width: double.infinity, height: 12, color: Colors.black45,),

              ],
            ),
          );
        }
      ),
    );
  }
}
