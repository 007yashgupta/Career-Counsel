
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import '../models/career_suboptions.dart';



class ItemInfoScreen extends StatelessWidget {

  static const routeName = '/item-info-screen';

  @override

  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as CareerSubOptions;
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final appBar =  AppBar(
        title: Text(item.title,style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.titleSmall!.color,
        ),),
      );
   
    return  Scaffold(

      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                height: (mediaQuery.size.height-appBar.preferredSize.height) * 0.32,
                width: double.infinity,
           
                child: ClipRRect(
                  // borderRadius: BorderRadius.only(bottomRight: Radius.circular(35), bottomLeft: Radius.circular(35),topLeft: Radius.zero,topRight: Radius.zero),
                  child: Image.asset(
                    item.imagePath,
                    fit: BoxFit.fill,
                    
                          
                  ),
                ),
          
              ),
              Container(
          
                  // height: (mediaQuery.size.height-appBar.preferredSize.height) * 0.68,
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                    
                  ),
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     
                      Center(
                        child: Text(
                          item.title , style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(45, 12, 87, 1),
                          ),
                          
                        ),
                      ),
                      SizedBox(height: 25,),
        
                     
          
                      // Text(item.title,style: TextStyle(
                      //     fontSize: 22,
                      //     fontWeight: FontWeight.bold,
                      //     color: Color.fromRGBO(45, 12, 87, 1),
                      //   ),),
          
                        // SizedBox(height: 10,),
                        Text(
                          item.story,
                          softWrap: true,
                         style : TextStyle(
                          fontSize: 17,
                          
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                        ),
                        SizedBox(height: 25,),
                                      Row(
                        children: [
                          Text(
                        'Average Salary : '   , style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),
                      ),
                       SizedBox(
                        width: 3,
                      ),
                          Text(
                         '₹', style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                          
                      //      Text(
                      //   cardItem.price.toString() , style: TextStyle(
                      //     fontSize: 22,
                      //     fontWeight: FontWeight.bold,
                      //     color: Color.fromRGBO(45, 12, 87, 1),
                      //   ),
                      // ),
                       Text(
                        item.averagePay.toString() , style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),
                      ),
                       SizedBox(
                        width: 3,
                      ),
                       FittedBox(
                         child: Text(
                           '/month', style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(149, 134, 168, 1),
                          ),
                                               ),
                       ),
                 
          
                        ],
          
                      ),
                        
                        
                      ],
                      
                    
          
          
                    ),
                  ],
                ),
                
              ),
          
            ],
          ),
        ),
          
      ),


    );
  }




}
