import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loan_request.dart';
class Loan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Loan request",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyLoan(),

    );
  }
}
class MyLoan extends StatefulWidget{
  MyLoan({Key key}) : super(key: key);

  @override
  _MyLoan createState() => _MyLoan();
}
class _MyLoan extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loan and payment status"),
      ),
      body: LoanRepay(
          data: List.generate(
              20,
                  (i) =>
                     LoanData(
                    i*1200.0,
                    i*1200.0/(2*3),
                       i*1200.0/(1*3)
                  )
          )
      ),
    );
  }
}
class LoanRepay extends StatelessWidget{
  final List<LoanData> data;

  LoanRepay({Key key,@required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
           itemCount: data.length,
           itemBuilder: (context, index){
             return ListTile(
               title: Text(
                 "Loan: "+data[index].loan.toString(),
               ),
               dense: false,
               subtitle: Text(
                   "Paid: "+data[index].paid.toString()+"NOK \t Remain:"+data[index].current.toString()+"NOK"
               ),
               leading: Icon(Icons.list),
               onTap: (){

               },
             );
           },
         ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LoanRequesting()
              )
          );
        },
      ),
    );
  }
}
class LoanData {
  double current,paid,loan;
  LoanData(this.loan,this.current,this.paid);
}