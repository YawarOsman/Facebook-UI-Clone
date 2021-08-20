import 'package:facebookk/classes/classes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({Key? key}) : super(key: key);

  @override
  _MarketPlaceState createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Expanded(
                          child: FlatButton(onPressed: (){},
                            child: Row(children: [
                              Expanded(child: SizedBox()),
                              Icon(Icons.open_in_new_sharp,size: 18,),Text(' Sell',style: TextStyle(fontSize: 17),),
                              Expanded(child: SizedBox()),
                            ],),
                            color: Colors.white10,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),


                          ),
                        ),SizedBox(width: 10,),
                        Expanded(
                          child: FlatButton(onPressed: (){},
                            child: Row(children: [
                              Expanded(child: SizedBox()),
                              Icon(Icons.format_list_bulleted_outlined,size: 18,),Text(' Categories',style: TextStyle(fontSize: 17),),
                              Expanded(child: SizedBox()),
                            ],),
                            color: Colors.white10,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child:Container(height: 0.5,width: double.infinity,color: Colors.white),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Today\'s picks',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          IconButton(onPressed: (){},icon:Icon(Icons.location_on,color: Colors.blue,),),
                          Text('km 140.Sulaimanyah',style: TextStyle(color: Colors.blue,fontSize: 16),)
                        ],
                      )
                    ],),
                    GridView.count(
                      shrinkWrap: true,physics: ScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        scrollDirection: Axis.vertical,
                        children: List.generate(SaleItems.length, (index){
                          return Column(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image(image: AssetImage(SaleItems[index].image),fit: BoxFit.cover,),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(SaleItems[index].name,overflow: TextOverflow.ellipsis,),
                                  Text(SaleItems[index].price.toString())
                                ],
                              )
                            ],
                          );

                        }),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
