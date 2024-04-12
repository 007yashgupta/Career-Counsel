import 'package:career_counsel/screens/counselors_info._screen.dart';
import 'package:flutter/material.dart';
import '../models/career_counselors.dart';

class CounselorScreenItem extends StatelessWidget {
  
  final CareerCounselor counselor;

  CounselorScreenItem(this.counselor);

  @override

  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.purple,
      onTap: (){
        Navigator.of(context).pushNamed(CounselorsInfoSceen.routeName,arguments: counselor);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.purple,
            width: 1
          )
        ),
        child: ListTile(
          
          title: Text('Dr.'+counselor.fullName,style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          subtitle: Text(counselor.domain),
          trailing: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(counselor.imagePath),
          ),
        
        ),
      ),
    );

  }
}