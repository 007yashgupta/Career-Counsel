import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../screens/data_sub_options._screen.dart';
import 'package:flutter/widgets.dart';


class DataOptionItem extends StatelessWidget {

  final String title;
  final String imagePath;
  final String story;


  DataOptionItem({required this.title,required this.imagePath,required this.story});

  @override

  Widget build(BuildContext context) {

    return InkWell(
      splashColor: Colors.pinkAccent,
      onTap: () {
        Navigator.of(context).pushNamed(DataSubOptionsScreen.routeName , arguments: title);
        
      },
      child: GridTile(
      
       child: Container(
        height: 250,
             decoration: BoxDecoration(
              border: Border.all(
                color:  Colors.black,
                width: 0.5,
                style: BorderStyle.solid,
              ),
               shape: BoxShape.rectangle,
               borderRadius: BorderRadius.circular(8),
             ),
             
             child: ClipRect(child: Image.asset(imagePath,fit: BoxFit.cover,)),
           ),
       footer: Container(
         decoration: BoxDecoration(
           border: Border.all(
                color:  Colors.purple,
                width: 1,
                style: BorderStyle.solid,
              ),
           color: Colors.white,
         ),
         child: Column(
           children: [
            SizedBox(height: 5,),
             FittedBox(
              fit: BoxFit.contain,
               child: Text(title,softWrap: true,style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(45, 12, 87, 1),
               ),),
             ),
             SizedBox(height: 5,),
           ],
         ))
       
            ),
    );


  }
}