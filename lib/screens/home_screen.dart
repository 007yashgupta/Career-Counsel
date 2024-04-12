import 'package:career_counsel/models/career_options.dart';
import 'package:career_counsel/widgets/data_option_item.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:provider/provider.dart';
import '../providers/user_profile.dart' as userProfile;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../DUMMY.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CareerOptions> dataOptions = Dummy().dataOptions;
   bool _isInitState = true;


  @override

    void didChangeDependencies() {
    super.didChangeDependencies();
    if(_isInitState) {

   

      Provider.of<userProfile.User>(context).fetchAndSetProducts();
      



    }
    _isInitState = false;
  }

  @override

  Widget build(BuildContext context) {

    // final userName = Provider.of<User>(context).title;
    final appBar =  AppBar(
      title: FittedBox(child: Text('Career Counsel',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.start,)),
        actions: [

          DropdownButton(
  items: [
    DropdownMenuItem(
      value: 'logout',
      child: Container(
        child: Row(
          children: [
            Icon(Icons.exit_to_app,size: 20,),
            SizedBox(width: 8,),
            Text('Logout',style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    ),
  ],
  value: 'logout',
  onChanged: (itemIdentifier) {
    if(itemIdentifier == 'logout') {
      FirebaseAuth.instance.signOut();
    }
  },
  icon: Icon(Icons.more_vert),
)

          // DropdownButton(items:[ 
          //   DropdownMenuItem

          // (
          //   child: Container(child: Row(
          //     children: [Icon(Icons.exit_to_app),SizedBox(width: 8,),Text('Logout')],
          //   ),),
          // )], value: 'logout',onChanged: (itemIdentifier) {
          //   if(itemIdentifier == 'logout') {

          //     FirebaseAuth.instance.signOut();

          //   }
          // } ,icon: Icon(Icons.more_vert),)
        ],
      );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
         child : Column(
          mainAxisAlignment:  MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           
            //  Text('Career Counsel',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.start,),
            //  SizedBox(
            //   height: 25,
            //  ),
             SearchBar(
              
              // autoFocus: true,
              // controller: ,
              hintText: 'Search',
              leading: Icon(Icons.search),
              
              
        
        
             ),
             SizedBox(
              height: 30,
        
             ),
             Container(
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
                     itemBuilder: (context, index) => DataOptionItem(
                      title:dataOptions[index].title,imagePath:dataOptions[index].imagePath,story:dataOptions[index].story
                     ),
                     itemCount: dataOptions.length,
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