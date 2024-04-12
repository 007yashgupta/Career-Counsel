
// import 'package:flutter/material.dart';
// import 'auth_screen.dart';



// class SignUpScreen extends StatefulWidget {

//   static const routeName = '/signUo-screen';

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
  
//   var passToggle = true;

//   @override


//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

    

//     return Material(
//       color: Colors.white,
//       child: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//               padding: EdgeInsets.all(20),
//               child: Image.asset('assets/images/splash_image.png'),
              
//               ),
//               SizedBox(height: 10,),
//               Padding(
//                 padding: EdgeInsets.all(12),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(

//                     ),
//                     label: Text('Enter Username'),
//                     prefixIcon: Icon(Icons.person),

                    
//                   ),
//                 ),
//               ),
//                           Padding(
//                 padding: EdgeInsets.all(12),
//                 child: TextField(
//                   obscureText: passToggle,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(

//                     ),
//                     label: Text('Enter Username'),
//                     prefixIcon: Icon(Icons.lock),
//                     suffixIcon: InkWell(
//                       onTap: () {

//                         if(passToggle) {
//                              setState(() {
//                               passToggle = false;
                          
//                         });
                          
//                         }
//                         else {
//                           setState(() {
//                             passToggle = true;
                            
//                           });
                          
//                         }
                     
                        
//                       },
//                       child: passToggle ? Icon(Icons.visibility_off_sharp) : Icon(Icons.visibility_sharp),
//                     )
                    
                    
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
                
//                 padding: const EdgeInsets.all(10.0),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: Material(
//                           color: theme.primaryTextTheme.titleSmall!.color,
//                           borderRadius: BorderRadius.circular(10),
//                           child: InkWell(
//                             onTap: () {},
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
//                               child: Center(
//                                 child: Text('Sign In',style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.bold,
//                                 ),),
//                               )),
//                           ),
//                         ),
//                 ),
//               ),
//               SizedBox(height: 15,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Already have an account',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black54


//                     ),
//                     ),
//                     TextButton(onPressed: () {
//                       Navigator.of(context).pushReplacementNamed(
//                         LoginScreen.routeName
//                       );
//                     }, child: Text('Log In',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: theme.primaryTextTheme.titleSmall!.color,
//                     ),))

//                 ],
//               ),
//             ],
//           ),
//       ),
//     ),
//     );


//   }
// }