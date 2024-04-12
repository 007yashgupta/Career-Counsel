import 'package:flutter/material.dart';
import '../models/career_suboptions.dart';
import '../widgets/data_sub_option_item.dart';
import '../DUMMY.dart';

class DataSubOptionsScreen extends StatelessWidget {

  static const routeName = 'data-sub-options-screen';

 



    @override

    Widget build(BuildContext context) {

      
    final title = ModalRoute.of(context)!.settings.arguments as String;
    final List<CareerSubOptions> itemList = Dummy().dataSubOptions[title] ! ;

    final appBar =  AppBar(
        title: Text('Career Counsel',style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).textTheme.titleSmall!.color,
        ),),
      );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          height: (MediaQuery.of(context).size.height-appBar.preferredSize.height) * 0.8,
          padding: EdgeInsets.all(15),
         child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            //  SizedBox(
            //   height: 30,
            //  ),
            //  Text('Career Paths',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.start,),
            //  SizedBox(
            //   height: 25,
            //  ),
             Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
               child: SearchBar(
                
                
                // autoFocus: true,
                // controller: ,
                hintText: 'Search',
                leading: Icon(Icons.search),
                
                
                       
                       
               ),
             ),
             SizedBox(
              height: 30,
        
             ),
             Expanded(
               child: Container(
                height: MediaQuery.of(context).size.height * 1 ,
                width: double.infinity,
                 child: Scrollbar(
                  
               
                  
                   child: GridView.builder(
                   
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     childAspectRatio: 3 / 2, 
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      // childAspectRatio: 3 / 2,
                      ),
                       itemBuilder: (context, index) => DataSubOptionItem(
                        item: itemList[index],
                        id: itemList[index].id,
                        title:itemList[index].title,imagePath:itemList[index].imagePath,story:itemList[index].story
                       ),
                       itemCount: itemList.length,
                      ),
                 ),
               ),
             ),
           ],
         ),
        
        ),
      ),

    );
   
  }
}
  
