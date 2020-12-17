import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'loan.dart';

class MyMoney extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            child: Text("Accounts",style: TextStyle(color: Colors.black26,fontSize: 17)),
          ),
          Container(
            color: Colors.white38,
            padding: EdgeInsets.only(top: 15,bottom: 15,left: 15),
            child: Row(
              children: [
                CircleAvatar(child: Icon(Icons.perm_identity,color: Colors.greenAccent,),backgroundColor: Colors.white38,),
                SizedBox(width: 20,),
                Text("Spending"),
                SizedBox(width: MediaQuery.of(context).size.width/2.8,),
                Text("FRW",style: TextStyle(color: Colors.black12),),
                Text("0.00",style: TextStyle(color: Colors.greenAccent),),
              ],
            ),
          ),
          SizedBox(height: 2,),
          Container(
            color: Colors.white38,
            padding: EdgeInsets.only(top: 15,bottom: 15,left: 15),
            child: Row(
              children: [
                CircleAvatar(child: Icon(Icons.print,color: Colors.black12,),backgroundColor: Colors.white38,),
                SizedBox(width: 40,),
                Text("SuperSaver",style: TextStyle(color: Colors.black12),),
                SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                Text("FRW",style: TextStyle(color: Colors.black12),),
                Text("0.00",style: TextStyle(color: Colors.blueGrey),),
              ],
            ),
          ),
          SizedBox(height: 2,width: MediaQuery.of(context).size.width,),
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text("Total",),
                SizedBox(width: MediaQuery.of(context).size.width/2,),
                Text("FRW",style: TextStyle(color: Colors.black12),),
                Text("0.00",style: TextStyle(color: Colors.blueGrey),),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20,right: 40),
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/40),
                height: 45,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(child: Icon(Icons.credit_card,color: Colors.white,size: 20,),backgroundColor: Colors.greenAccent),
                    SizedBox(width: 5,),
                    Text("Top up",style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width/40,),
              Container(
                padding: EdgeInsets.only(left: 20,right: 35),
                height: 45,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromRGBO(120, 212, 202, 0.3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(child: Icon(Icons.card_travel,color: Colors.black,size: 20,),backgroundColor: Color.fromRGBO(120, 212, 202, 0.1),),
                    SizedBox(width: 10,),
                    Text("Cash out",style: TextStyle(color: Colors.black),),
                  ],
                ),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.only(left: 20,right: 40),
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/40,right: 40,top: 30),
            height: 45,
            width: MediaQuery.of(context).size.width/3*2.5,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey),
            child: InkWell(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(child: Icon(Icons.image_aspect_ratio,color: Colors.white,size: 20,),backgroundColor: Colors.blueGrey),
                  SizedBox(width: 5,),
                  Text("Request  Loan and repayment",style: TextStyle(color: Colors.white),),
                ],
              ),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyLoan()
                    )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}