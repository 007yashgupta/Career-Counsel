
import 'package:flutter/material.dart';
// import '../screens/signup_screen.dart';

class AuthForm extends StatefulWidget {

  bool isLoading;

  final void Function( String email,
    String password,
    String username,
    bool isLogIn,
    BuildContext ctx) submitFn; 

  AuthForm(this.submitFn,this.isLoading);


  static const routeName = '/auth-screen';

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {




  bool passToggle = true;
  var _isLogin = true;

  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _userName = '';
  String _userPassword = '';

  void _trySubmit() {
    print('submit');

   final isValid  = _formKey.currentState?.validate();
    print('submit2');

   if(isValid!=null) {
     print('submit4');


    _formKey.currentState?.save();
    
     print('submit3');
     widget.submitFn(_userEmail.trim(),_userPassword.trim(),_userName.trim(),_isLogin,context);

    // FocusScope.of(context).unfocus();
    print(_userEmail);
    print(_userName);
    print(_userPassword);
    // use these values to send our auth request

   }
    print('submit10');

  }
  @override

  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return SafeArea(child: Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset('assets/images/splash_image.png'),
      
            ),
            SizedBox(height: 15,),
           if(!_isLogin) Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextFormField(
                key: ValueKey('userName'),
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person), 
                ),
                validator: (value) {
        
                  if (value!.isEmpty || value.length<4) {
        
                    return 'Please enter at least 4 characters';
        
                  }
        
                  return null;
        
                  
                },
                onSaved: (newValue) => _userName = newValue!,
              )
          ,),
                 Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextFormField(
                 key: ValueKey('emailAddress'),
                
                validator: (value){
                  if (value!.isEmpty || !value.contains('@')) {
        
                    return 'Please enter a valid email address.';
                  }
        
                  return null;
        
                },
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email), 
                ),
                onSaved: (newValue) {
                  _userEmail = newValue!;
                  
                },
              )
          ,),
          //        Padding(
          //     padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          //     child: TextFormField(
          //       decoration: InputDecoration(
          //         labelText: 'Phone Number',
          //         border: OutlineInputBorder(),
          //         prefixIcon: Icon(Icons.phone_android), 
          //       ),
          //     )
          // ,),
                Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextFormField(
                 key: ValueKey('emailPassword'),
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  labelText: 'Email Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone_android),
                  suffixIcon: InkWell(
                    onTap: () {
                      if(passToggle) {
                        passToggle = false;
      
                      } else {
                        passToggle = true;
                      }
                      setState(() {
                        
                      });
                      
                    },child: passToggle ?   Icon(Icons.visibility) : Icon(Icons.visibility_off_sharp),
                    
                    ) ,
                ),
                validator: (value) {
                if(value!.isEmpty || value.length < 7) {
        
                  return 'Password must be 7 characters long.';
                }
        
                return null;
                  
        
                },
                onSaved: (newValue) => _userPassword = newValue!,
              )
          ,),
          SizedBox(height: 10,),
          if(widget.isLoading) CircularProgressIndicator(),
          if(!widget.isLoading) 
                      Padding(
              
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                        color: theme.primaryTextTheme.titleSmall!.color,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            _trySubmit();
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                            child: Center(
                              child: Text(_isLogin ? 'Log In' : 'Sign Up',style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),),
                            )),
                        ),
                      ),
              ),
            ),
            if(!widget.isLoading) 
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 _isLogin? 'Don\'t have account?' : 'Already have an account.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54
      
      
                  ),
                  ),
                  TextButton(onPressed: () {
                    setState(() {
                      _isLogin = !_isLogin;
                      
                    });
                    
                  }, child: Text(_isLogin ? 'Create Account' : 'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryTextTheme.titleSmall!.color,
                  ),))
      
              ],
            ),
            
        ],
      ),
    )
    );



  }
}