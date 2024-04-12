
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import '../widgets/auth_form.dart';
// import '../screens/signup_screen.dart';

class AuthScreen extends StatefulWidget {


  static const routeName = '/auth-screen';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  final _auth = FirebaseAuth.instance;
  bool _isLoading = false;


  void _submitAuthForm(
    String email,
    String password,
    String username,
    bool isLogIn,
    BuildContext ctx,
  ) async {

      UserCredential authResult;
    try{

      setState(() {
        _isLoading = true;
        
      });

         if (isLogIn) {
    try {
      authResult = await  _auth.signInWithEmailAndPassword(email: email, password: password);

      
    } catch (err) {
      print(err);
      
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(content: Text('Invalid password'),
        backgroundColor: Colors.red,),
        
      );
      setState(() {
        _isLoading = false;
        
      });
    }
    } 
    else{
      authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      try {
        await FirebaseFirestore.instance.collection('users').doc(authResult.user!.uid).set({
        'username' : username,
        'email' : email,
      });

      } catch (err) {
        print(err);
      }
      

    }

    } on PlatformException catch (err) {

      var message = 'An error occurred, please check your credentials';

      if (err.message != null) {

        message = err.message!;
      }

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(content: Text(message),
        backgroundColor: Colors.red,),
      );
      setState(() {
        _isLoading = false;
      });
    } catch (err) {
      print(err);
       setState(() {
        _isLoading = false;
      });
    }
 

  }

  @override

  Widget build(BuildContext context) {

    

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: AuthForm(_submitAuthForm,_isLoading),
       
      ),
    );



  }
}