import 'dart:convert';

import 'package:flutter/material.dart';
//void main(){
//  runApp(
//    MaterialApp(
//      home: MyLoginApp(),
//    )
//  );
//}
class LoanRequesting extends StatefulWidget {
  @override
  _State createState() => _State();

}

class _State extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request loan'),
      ),
      body: RequestLoanPage(),
    );
  }
}
class RequestLoanPage extends StatefulWidget {
  @override
  RequestLoan createState() => RequestLoan();

}

class RequestLoan extends State<RequestLoanPage> {
  TextEditingController amountController = TextEditingController();
  TextEditingController reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50,left: 30,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Fill this form to apply for loan",
            style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text("Amount"),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(left: 20.0,right: 3.0),
            ),
            validator: (String value){
              if(value.isEmpty){
                return "Amount are required";
              }
              return null;
            },
          ),
          const SizedBox(height: 10.0),
          Text("Reason"),
          TextFormField(
            minLines: 3,
            maxLines: 5,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Explain the reason why you are requesting a loan",
              contentPadding: EdgeInsets.only(left: 20.0,top: 20,right: 3.0),
            ),
            validator: (String value){
              if(value.isEmpty){
                return "Reason is required";
              }
              return null;
            },
          ),
          const SizedBox(height: 10.0),
          RaisedButton(
            color: Colors.green,
            child: Text("Apply",style: TextStyle(color: Colors.white),),
            onPressed: (){
              String amount = amountController.text,reason = reasonController.text;
             final SnackBar sn = SnackBar(content: Text("Request sent,will be reviewed and get back to you"));
             Scaffold.of(context).showSnackBar(sn);
            },
          ),


        ],
      ),
    );
  }

}
