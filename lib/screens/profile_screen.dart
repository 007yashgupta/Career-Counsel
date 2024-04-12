import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_profile.dart';


class ProfileScreen extends StatefulWidget {


  static const routeName = '/profile-screen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool _initStateValue = true;
  // late UserProfile _userProfile;

  
 
  var _initValues = {

    'fullName' : '',
    'emailAddress' : '',
    'phoneNumber' : '0',
    'gender' : '',
    'interest' : '',
    'age': '0',
    'education': '',

  };

  
 


  
  final _form = GlobalKey<FormState>();
  final _emailFocusNode= FocusNode();
  final _phoneFocusNode= FocusNode();
  final _ageFocusNode= FocusNode();
  final _genderFocusNode= FocusNode();
  final _educationFocusNode= FocusNode();
  final _interestFocusNode= FocusNode();

  void _saveForm () {
     final formValidate = _form.currentState!.validate();
      if(!formValidate) {
      return;
    }

    _form.currentState!.save();
   Provider.of<User>(context,listen: false).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!,   int.parse(_initValues['phoneNumber']!),int.parse(_initValues['age']!),_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Profile saved'),duration: Duration(seconds: 5),));
    


    
  }

   @override

  void didChangeDependencies() {
    if(_initStateValue)
    {
        Provider.of<User>(context,listen: false).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!,   int.parse(_initValues['phoneNumber']!),int.parse(_initValues['age']!),_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
        

 


    }
    _initStateValue = false;
    super.didChangeDependencies();
    

   

    

    

  }


  
  
  @override
 

  

     Widget build(BuildContext context) {


   
    final appBar =  AppBar(
        title:   Row(
                             children: [
                              SizedBox(width: 11.5,),
                               Text('Edit Profile',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.left,),
                             ],
                           ),
      );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              //     SizedBox(
              // height: 30,
              //              ),
                          //  Row(
                          //    children: [
                          //     SizedBox(width: 11.5,),
                          //      Text('Edit Profile',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.left,),
                          //    ],
                          //  ),
              //               SizedBox(
              // height: 25,
              //              ),
                           
                 
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: Focus(
                        child: TextFormField(
                          initialValue: _initValues['fullName'],
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person), 
                          ),
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context).requestFocus(_emailFocusNode);
                          },
                           validator: (value) {
                    if(value!.isEmpty) {
                      return 'Please provide a value.';
                    }

                    return null;
                  } ,
                  onSaved: (newValue) {
                    _initValues['fullName'] = newValue!;
                    //  Provider.of<User>(context).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!, _initValues['phoneNumber']! as int, _initValues['age']! as int,_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
                  },
                        ),
                      )
                  ,),
                         Padding(
          
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: Focus(
                        child: TextFormField(
                          initialValue: _initValues['emailAddress'],
                          focusNode: _emailFocusNode,
                           
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email), 
                          ),
                           textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context).requestFocus(_phoneFocusNode);
                          },
                          validator: (value) {

                          if(value!.isEmpty) {

                            return 'Please enter an  email address.';

                          }

 

                          if(!value.contains('@')) {

                            return 'Please enter a valid Email Address.';
                          }

                           if(!value.endsWith('.com') ) {

                            return 'Please enter a valid image URL.';
                          }

                          return null;




                        },
                        onSaved: (newValue) {
                          _initValues['emailAddress'] = newValue!;
                    //  Provider.of<User>(context).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!, _initValues['phoneNumber']! as int, _initValues['age']! as int,_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
                        }
                        ),
                      )
                  ,),
                         Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: TextFormField(
                       
                        focusNode: _phoneFocusNode,
                        
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone_android), 
                        ),
                         textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_ageFocusNode);
                        },
                         validator: (value) {
                    if(value!.isEmpty) {
                      return 'Please provide a value.';
                    }
                    if(value.length!=10) {
                      return 'Please provide a valid phone number.';
                    }

                    return null;
                  } ,
                  onSaved: (newValue) {
                          _initValues['phoneNumber'] = newValue!;
                    //  Provider.of<User>(context).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!, _initValues['phoneNumber']! as int, _initValues['age']! as int,_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
                        }
                        
                      )
                  ,),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: TextFormField(
                          initialValue: _initValues['age'],
                        focusNode: _ageFocusNode,
                        
                        decoration: InputDecoration(
                          labelText: 'Age',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.event), 
                        ),
                         textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_genderFocusNode);
                        },
                        validator: (value) {

                    if(value!.isEmpty) {

                      return 'Please enter your Age.';

                    }

                    if(double.tryParse(value) == null) {
                      return 'Please enter a valid Age';
                    }

                    if(double.parse(value) <= 0) {

                      return 'Please enter the Age greater than 0.';

                    }

                    return null;
                    

                  },
                  onSaved: (newValue) {
                          _initValues['age'] = newValue!;
                    // Provider.of<User>(context).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!, _initValues['phoneNumber']! as int, _initValues['age']! as int,_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
                        }
                      )
                  ,),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: TextFormField(
                          initialValue: _initValues['gender'],
                        focusNode: _genderFocusNode,
                         
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person), 
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_educationFocusNode);
                        },
                         validator: (value) {
                    if(value!.isEmpty) {
                      return 'Please provide a value.';
                    }

                    return null;
                  } ,
             onSaved: (newValue) {
                          _initValues['gender'] = newValue!;
                     //Provider.of<User>(context).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!, _initValues['phoneNumber']! as int, _initValues['age']! as int,_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
                        }
                      )
                  ,),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: TextFormField(
                          initialValue: _initValues['education'],
                        focusNode: _educationFocusNode,
                      
                        decoration: InputDecoration(
                          labelText: 'Education',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.school), 
                        ),
                          textInputAction: TextInputAction.next,
                         
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_interestFocusNode);
                        },
                         validator: (value) {
                    if(value!.isEmpty) {
                      return 'Please provide a value.';
                    }

                    return null;
                  } ,
                   onSaved: (newValue) {
                          _initValues['education'] = newValue!;
                     //Provider.of<User>(context).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!, _initValues['phoneNumber']! as int, _initValues['age']! as int,_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
                        }
                      )
                  ,),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      child: TextFormField(
                        initialValue: _initValues['interest'],
                       
                        decoration: InputDecoration(
                          labelText: 'Interest',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.explore), 
                        ),
                        focusNode: _interestFocusNode,
                         textInputAction: TextInputAction.done,

                          validator: (value) {
                    if(value!.isEmpty) {
                      return 'Please provide a value.';
                    }

                    return null;
                  } ,
                  onFieldSubmitted: (_) {
                    _saveForm();
                  },
                   onSaved: (newValue) {
                          _initValues['interest'] = newValue!;
                     //Provider.of<User>(context).userDetailsFill(_initValues['fullName']!, _initValues['emailAddress']!, _initValues['phoneNumber']! as int, _initValues['age']! as int,_initValues['gender']!, _initValues['education']!, _initValues['interest']!);
                        }
                      ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Material(
                        

                              color: Theme.of(context).primaryTextTheme.titleSmall!.color,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                                  child: Center(
                                    child: Text('Edit',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  )),
                              ),
                            ),
                       Material(
                              color: Theme.of(context).primaryTextTheme.titleSmall!.color,
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  _saveForm();
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                                  child: Center(
                                    child: Text('Save',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  )),
                              ),
                            ),
                     ],
                   ),
                  ],
                  )),
          ),
        ),
      ),
    );
            }
}