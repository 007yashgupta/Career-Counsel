import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/career_counselors.dart';

class CounselorsInfoSceen extends StatefulWidget {

  static const routeName = '/counselors-info-screen';

  @override
  State<CounselorsInfoSceen> createState() => _CounselorsInfoSceenState();
}

class _CounselorsInfoSceenState extends State<CounselorsInfoSceen> {
  @override

  Widget build(BuildContext context) {

    final  counselor = ModalRoute.of(context)!.settings.arguments as CareerCounselor;
    final appBar = AppBar(
        title: FittedBox(child: Text('Dr.'+counselor.fullName,style: Theme.of(context).textTheme.titleLarge,)),
      );

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: (MediaQuery.of(context).size.height-appBar.preferredSize.height) * 1,
          
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: LayoutBuilder(
            builder: (context,constraints) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(counselor.imagePath,fit: BoxFit.cover,width: 100,),
                      SizedBox(width: 20,),
                      Container(
                        height: constraints.maxHeight * 0.35,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 30,),
                                Text('Dr.'+counselor.fullName,style: TextStyle(
                                  fontSize: 22,
                                ),),
                                Text(counselor.domain,style: TextStyle(fontSize: 17,color:Colors.grey),),
                             
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(onPressed: (){}, icon: Container(decoration: BoxDecoration(color: Colors.amber),child: Icon(Icons.email,color: Color(0xffFFECDD),)) ),
                                    IconButton(onPressed: (){}, icon: Container(decoration:BoxDecoration(color: Colors.red),child:  Icon(Icons.call,color: Color(0xffFEF2F0),)) ),
                                    IconButton(onPressed: (){}, icon: Container(decoration: BoxDecoration(color:Colors.pink), child: Icon(Icons.chat_bubble_sharp,color: Color(0xffFEF2F0),)) ),
                            
                            
                                    
                                  ],
                            
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                               
                            
                              ],
                            ),
                          ],
                        ),
                      )
                      
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 35,
                // ),
                  Container(
                    padding: EdgeInsets.only(left: 18),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                    width: 35,
                                    ),
                        Text('About',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                         Text(counselor.story,style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                               
                      ],
                    ),
                  )

                                            
                           
              ],
            ),
          ),
        ),
      ),
    );
  }
}