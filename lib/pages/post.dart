
import 'package:facebookk/classes/classes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
String post='';
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white12,
          appBar: AppBar(
            toolbarHeight: 50,
            leading: IconButton(icon: Icon(Icons.arrow_back,size: 30,),onPressed: (){Navigator.pop(context);},),
            title: Text('Create post',style: MyStyle(),),titleSpacing: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: 64,
                    child: Text('POST',style: TextStyle(color:post==''?Colors.white54:Colors.white,fontSize: 16),

                    ),
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                      color: post==''?Colors.white30:Colors.blue,
                     borderRadius: BorderRadius.circular(4)
                     ),
                  ),
                ),
              )
              ],
            bottom: PreferredSize(
             preferredSize: Size.fromHeight(0.9),
             child: Container(
             color: MyColor().color,
             height: 0.9,
             )
              )
          ),
          body: Center(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
                    child: Column(children: [
                      Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg'),),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Yawar Osman',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white70 ),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    width: mediaQuery.size.width/4,height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(width: 0.9,color: Colors.white70)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock,color: Colors.white70,size: 15,),
                                        Text(' Only me',style: MyStyle(),),
                                        Icon(Icons.arrow_drop_down,color: Colors.white70,size: 20,),
                                      ],),
                                  ),SizedBox(width: 6),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    width: mediaQuery.size.width/4.5,height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(width: 0.9,color: Colors.white70)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.add,color: Colors.white70,size: 15,),
                                        Text(' Album',style: MyStyle(),),
                                        Icon(Icons.arrow_drop_down,color: Colors.white70,size: 20,),
                                      ],),
                                  ),
                                ],),

                            ],
                          )
                        ],
                      ),
                      Expanded(child:  Container(
                        padding: EdgeInsets.only(top: 10),
                        width: double.infinity,height: double.infinity,
                        child: TextField(
                          onChanged: (value){
                            setState(() {
                              post=value;
                            });
                          },
                          style: MyStyle().copyWith(fontSize: 25,color: post!=''?Colors.white60:Colors.white),
                          decoration: InputDecoration(
                              hintText: 'What\'s on your mind?',
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              hintStyle: MyStyle().copyWith(fontSize: 25)
                          ),
                        ),
                      )),

                    ],),
                  ),
                ),
                Container(width: double.infinity,height: 50,color: Colors.black12,
                child: Column(
                  children: [
                    Divider(height: 2,color: MyColor().color,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       IconButton(onPressed: (){}, icon: Icon(Icons.image,size: 28,color: Colors.green[400],)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.person_add_alt_1,size: 28,color: Colors.blue)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions,size: 28,color: Colors.orange[300])),
                       IconButton(onPressed: (){}, icon: Icon(Icons.location_on,size: 28,color: Colors.red[400])),
                       IconButton(onPressed: (){}, icon: CircleAvatar(child: Icon(Icons.more_horiz,color: Colors.black,),backgroundColor: Colors.white54,radius: 14,)),

                      ],
                    ),
                  ],
                ),)


              ],
            ),
          ),
        )
    );
  }
}
