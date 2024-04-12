import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/career_counselors.dart';
import '../widgets/counselor_screen_item.dart';
import '../DUMMY.dart';

class CounselorsScreen extends StatelessWidget {

  static const routeName = '/counselors-screen';
  final List<CareerCounselor> counselorsList = Dummy().careerCounselorsList;

  @override

  Widget build(BuildContext context) {
     final appBar =  AppBar(
        title:   FittedBox(child: Text('Meet our Experts',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.start,)),
      );

    return Scaffold(
      appBar: appBar,
      
      backgroundColor: Colors.white,
      body: Padding(
        
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height:  30),
            // Row(
            //                  children: [
                              
            //                    Text('Meet Our Experts',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.left,),
            //                  ],
            // ),
          
              Text('Counselors',style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(
              height: 25,
                           ),

              Expanded(
                child: Container(
                  
                  width: MediaQuery.of(context).size.width * 1,
                  child: ListView.builder(itemBuilder: (context,index)=> Padding(
                    padding: const EdgeInsets.only(top:0.5),
                    child: CounselorScreenItem(counselorsList[index]),
                  ) ,itemCount: counselorsList.length,)
                
                ),
              ),],
        ),
      ),
    );
  }
}