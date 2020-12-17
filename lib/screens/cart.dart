import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(height: 5,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(child: Icon(Icons.dashboard,size: 40,color: Colors.greenAccent,),),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("QR Payment",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20,)),
                    SizedBox(height: 10,),
                    Text("Scan to pay",style: TextStyle(color: Colors.black26,fontSize: 20),),
                  ],
                ),
              ],
            ),

          ),
          SizedBox(height: 20,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(child: Icon(Icons.call,size: 40,color: Colors.greenAccent,),),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("Airtime top-up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20,)),
                    SizedBox(height: 10,),
                    Text("Buy mobile load",style: TextStyle(color: Colors.black26,fontSize: 20),),
                  ],
                ),
              ],
            ),

          ),
          SizedBox(height: 20,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(child: Icon(Icons.library_books,size: 40,color: Colors.greenAccent,),),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("Bills payment",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20,)),
                    SizedBox(height: 10,),
                    Text("Pay your bills in seconds",style: TextStyle(color: Colors.black26,fontSize: 20),),
                  ],
                ),
              ],
            ),

          ),
          SizedBox(height: 20,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),

        ],
      ),
    );
  }
}