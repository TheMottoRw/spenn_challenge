import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

// void main() => runApp(MyTransfer());
// class Transfer extends StatelessWidget{
//   static const String _title = "Spenn";
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: MyTransfer(),
//     );
//   }
// }
//
// class MyTransfer extends StatefulWidget{
//   MyTransfer({Key key}) : super(key: key);
//
//   @override
//   _MyTransferState createState() => _MyTransferState();
// }
class Me extends StatelessWidget{
  var list = ["Requests(0)","Recent actiivty"];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 20,),
              Text("From",style: TextStyle(color: Colors.greenAccent,fontSize: 18),),
              SizedBox(width: 20,),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(1670, 2500, 242, 0.3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(child: Icon(Icons.perm_identity,color: Colors.white,),backgroundColor: Colors.black12,),
                    SizedBox(width: 20,),
                    Text("Me"),
                    SizedBox(width: 20,),
                    Text("|",style: TextStyle(color: Colors.black12),),
                    SizedBox(width: 20,),
                    Text("FRW",style: TextStyle(color: Colors.black12),),
                    SizedBox(width: 20,),
                    Text("0.00",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              )
            ]
          ),
          SizedBox(height: 10,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("To",style: TextStyle(color: Colors.greenAccent,fontSize: 18, fontWeight: FontWeight.normal),),
              SizedBox(width: 40,),
              CircleAvatar(
                child: Text("+",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                backgroundColor: Colors.greenAccent,
              ),
              SizedBox(width: MediaQuery.of(context).size.width/5*2.2,),
              Container(
                child: Icon(Icons.dashboard,color: Colors.greenAccent,size: 35,),
                width: 30,
                height: 30,
              )
            ],
          ),
          SizedBox(height: 20,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 70,),
              Text("Amount",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400,color: Colors.greenAccent),),
              SizedBox(width: MediaQuery.of(context).size.width/8*3,),
              Text("FRW",style: TextStyle(fontSize: 22,color: Colors.black26),),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 80),
            child: Text("0.00",style: TextStyle(color: Colors.black26,fontSize: 40),),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
          Container(
            padding: EdgeInsets.only(left: 40),
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text("Requests(0)",style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
                SizedBox(width: MediaQuery.of(context).size.width/5*2,),
                Icon(Icons.keyboard_arrow_down,color: Colors.greenAccent,size: 40,),
              ],
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
          Container(
            padding: EdgeInsets.only(left: 40),
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text("Recent activity",style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
                SizedBox(width: MediaQuery.of(context).size.width/6*2,),
                Icon(Icons.keyboard_arrow_down,color: Colors.greenAccent,size: 40,),
              ],
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(height: 3,width: MediaQuery.of(context).size.width,child: Container(
            color: Colors.grey[200],
            child: Text(""),
          ),),
        ],
      ),
    );
  }
}
