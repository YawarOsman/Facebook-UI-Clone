import 'package:facebookk/classes/classes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Notifications extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text('Earlier',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
             ListView.builder(
                 shrinkWrap: true,
                 physics: ScrollPhysics(),
                 itemCount: 12,
                 itemBuilder: (context,index){
                   return Column(
                     children: [
                       SizedBox(height: 17,),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Stack(
                             children: [
                               CircleAvatar(backgroundImage:  AssetImage(friendRequest[index].image),radius: 30,),
                               Padding(
                                 padding: const EdgeInsets.only(top: 35,left: 35),
                                 child: CircleAvatar(child: friendRequest[index].icon,backgroundColor: friendRequest[index].color,radius: 14,),
                               )
                             ],
                           ),
                           SizedBox(width: 10,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [


                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: RichText(
                                        text: TextSpan(
                                          text: "${friendRequest[index].name} ",
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),
                                          children: [
                                            TextSpan(
                                              text: '${friendRequest[index].details}\n',
                                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal)

                                            ),
                                            TextSpan(
                                                text: '${DateFormat('EE').format(friendRequest[index].date)} at ${DateFormat('h:mm a').format(friendRequest[index].date)}',
                                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white60)
                                            )
                                          ],
                                        ),strutStyle: StrutStyle(height: 1.5),
                                      ),
                                    width: deviceInfo.size.width/1.5,




                                  ),
                                  IconButton(onPressed: (){},icon: Icon(Icons.more_horiz,size: 18,),)
                                ],
                              )

                             ],
                           ),
                         ],
                       ),


                     ],
                   );
                 }),
           ],
          ),
        ),
      ),
    );
  }
}
