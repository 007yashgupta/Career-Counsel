
import 'package:flutter/material.dart';
import '../screens/auth_screen.dart';

// import './login_screen.dart';

import './navbar_roots.dart';




class WelcomeScreen extends StatelessWidget {


static const routeName = '/welcome-screen';
  @override

  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context); 
    return SingleChildScrollView(
      child: Material(
        child: Container(
          height: mediaQuery.size.height * 1,
          width: mediaQuery.size.width * 1,
          padding: const EdgeInsets.all(10),
          child: LayoutBuilder(builder: (context, constraints) => Column(
            
              children: [
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        NavBarRoots.routeName,
                  
                      );
                  
                    },
                    child: Text('Skip',
                    style: TextStyle(
                      color : theme.primaryTextTheme.titleSmall!.color,
                      fontSize: 20,
                    ),),
                  ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.37,
                    
                    padding: EdgeInsets.all(20),
                    child:  Image.asset('assets/images/splash_image.png',),),
                  SizedBox(height: 50,),
                  Text(
                    'Career Counsel',
                    style: TextStyle(
                      color: theme.primaryTextTheme.titleSmall!.color,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2,
                  
                    ),
                  ) ,
                  SizedBox(height: 10,),
                  Text(
                    'Make your passion your career',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      wordSpacing: 2,
                  
                    ),
                  ) ,
                  SizedBox(height: 40,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          color: theme.primaryTextTheme.titleSmall!.color,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                              child: Text('Log In',style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),)),
                          ),
                        ),
                                    Material(
                          color: theme.primaryTextTheme.titleSmall!.color,
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                                Navigator.of(context).pushNamed(
                            AuthScreen.routeName
                          );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                              child: Text('Sign Up',style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),)),
                          ),
                        ),
                    
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