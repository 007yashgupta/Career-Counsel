import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import './providers/user_profile.dart' as userProfile;
import './firebase_options.dart';
import './screens/counselors_screen.dart';
import './screens/counselors_info._screen.dart';
import './screens/item_info_screen.dart';
import './screens/welcome_screen.dart';
import './screens/profile_screen.dart';
import './screens/home_screen.dart';
import 'screens/data_sub_options._screen.dart';
import './screens/auth_screen.dart';
import './screens/navbar_roots.dart';



Future<void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
  

 await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  
  @override

  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => userProfile.User(), )],
      child: MaterialApp(
        title : 'Career Counsel',
      
        theme: ThemeData(
          textTheme: TextTheme(
              titleLarge: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          primarySwatch: Colors.purple,
          primaryTextTheme: const TextTheme(
            titleSmall: TextStyle(
              color: Color(0xFF7165D6),
            )
      
          )
        ),
      
        // initialRoute: WelcomeScreen.routeName,
        home: StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder:(context, userSnapshot) {

          if(userSnapshot.hasData) {
            return NavBarRoots();
          }
          return AuthScreen();

        },),
      
        routes : {
          WelcomeScreen.routeName : (context)=>WelcomeScreen(),
          ProfileScreen.routeName : (context)=> ProfileScreen(),
          AuthScreen.routeName : (context)=>AuthScreen(),
          CounselorsScreen.routeName : (context) => CounselorsScreen(), 
          HomeScreen.routeName : (context)=> HomeScreen(),
          // SignUpScreen.routeName :(context) => SignUpScreen(),
          NavBarRoots.routeName :(context) => NavBarRoots(),
          DataSubOptionsScreen.routeName :(context) => DataSubOptionsScreen(),
          ItemInfoScreen.routeName :(context) => ItemInfoScreen(),
          CounselorsInfoSceen.routeName :(context) => CounselorsInfoSceen(),
      
      
        }
      ),
    );
  }
}

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import './firebase_options.dart';
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
  

//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             height: 50,
//             width: 100,
//             child: TextButton(
//               style: ButtonStyle(),
             
//               onPressed: () => signInAnonymously(),
//               child: Text('Sign In'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// void signInAnonymously() async {
//     try {
//       final authResult = await FirebaseAuth.instance.signInAnonymously();
//       print('${authResult.user!.uid}');
//     } catch(e) {
//       print(e.toString());
//     }
//   }
// }