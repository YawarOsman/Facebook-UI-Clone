
import 'package:facebookk/classes/classes.dart';
import 'package:flutter/material.dart';

class FriendRequest extends StatefulWidget {
  const FriendRequest({Key? key}) : super(key: key);

  @override
  _FriendRequestState createState() => _FriendRequestState();
}

class _FriendRequestState extends State<FriendRequest> {

  List friendRequest=[
    Request(name: 'Ari ahmad',mutual: 2,year:1,image: 'assets/requests/1.jpg'),
    Request(name: 'omer wali',mutual: 3,year:3,image: 'assets/requests/2.jpg'),
    Request(name: 'uora dani',mutual: 2,year:2,image: 'assets/requests/3.jpg'),
    Request(name: 'arshad tol',mutual: 9,year:1,image: 'assets/requests/4.jpg'),
    Request(name: 'ahmad sevin',mutual: 3,year:4,image: 'assets/requests/5.jpg'),
    Request(name: 'golio roun',mutual: 7,year:1,image: 'assets/requests/6.jpg'),
    Request(name: 'forto black',mutual: 4,year:1,image: 'assets/requests/7.jpg'),
    Request(name: 'cristena lopi',mutual: 1,year:2,image: 'assets/requests/8.jpg'),
    Request(name: 'Hil Lri',mutual: 5,year:1,image: 'assets/requests/9.jpg'),
    Request(name: 'De lopes',mutual: 13,year:3,image: 'assets/requests/10.jpg'),
    Request(name: 'vegan oral',mutual: 1,year:1,image: 'assets/requests/11.jpg'),
    Request(name: 'santush jani',mutual: 10,year:2,image: 'assets/requests/12.jpg'),

  ];


  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black26,

      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.white10,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text('Suggestions',style: TextStyle(fontSize: 17,color: Colors.white70),),
                        width: 130,height: 34,
                      ),SizedBox(width: 8,),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colors.white10,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child:Text('All Friends',style: TextStyle(fontSize: 17,color: Colors.white70),),
                        width: 110,height: 34,
                      )
                    ],),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child:Container(height: 0.3,width: double.infinity,color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Friends Requests ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                            Text('12',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.red),),

                          ],
                        ),
                        Text('See All',style: TextStyle(fontSize: 18,color: Colors.blue),),
                      ],
                    ),SizedBox(height: 5,),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 12,
                    itemBuilder: (context,index){
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CircleAvatar(backgroundImage:  AssetImage(friendRequest[index].image),radius: 45,),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        child: Text(friendRequest[index].name,
                                          style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                                      width: deviceInfo.size.width/1.6,
                                    ),

                                    Text('${friendRequest[index].year} y',style: MyStyle(),),
                                  ],
                                ),
                                Text('${friendRequest[index].mutual} mutual friends',style: MyStyle(),),



                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlatButton(onPressed: (){},child: Text('Confirm'),color: Colors.blue,minWidth: 135,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),height: 33,),
                                    SizedBox(width: 9,),
                                    FlatButton(onPressed: (){},child: Text('Delete'),color: Colors.white12,minWidth: 135,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),height: 33,),
                                  ],
                                )

                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 17,)

                      ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
