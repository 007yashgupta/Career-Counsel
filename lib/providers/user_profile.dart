import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserProfile  {

  final String id;

  final String fullName;
  final String email;
  final int contactNumber;
  final int age;
  final String gender;
  final String education;
  final String interest;

  UserProfile({
    required this.id,
    required this.fullName,
    required this.email,
    required this.contactNumber,
    required this.age,
    required this.education,
    required this.gender,
    required this.interest,
  });

  



}

class User with ChangeNotifier {

  List<UserProfile> _users =[];

  var _User = UserProfile(id: '', fullName: '', email: '', contactNumber: 0, age: 0, education: '', gender:'', interest: '');
  

    Future<void> userDetailsFill (
  String fullName,
  String email,
  int contactNumber,
  int age,
  String gender,
  String education,
  String interest,

  ) async{

    const url = 'https://career-counsel-85077-default-rtdb.firebaseio.com/user.json';
     try{
      final response = await http.post(Uri.parse(url),
      body: json.encode(
      {
        'fullName': fullName, 'email': email, 'contactNumber': contactNumber, 'age': age, 'education': education, 'gender': gender, 'interest': interest
      }


    ), );
     _User = UserProfile(id: json.decode(response.body) ['name'], fullName: fullName, email: email, contactNumber: contactNumber, age: age, education: education, gender: gender, interest: interest);

      _users.add(_User); 
    
      notifyListeners();

    } catch 
       (error) {
        print(error);
        throw(error);
      }
   
    print(_User.id); 
    print(_User.fullName);
    print(_User.email);
    print(_User.contactNumber);
    print(_User.age);
    print(_User.education);
    print(_User.interest);
           

    notifyListeners();
    
  }

  
  Future<void>  fetchAndSetProducts  () async {

    const url = 'https://career-counsel-85077-default-rtdb.firebaseio.com/user.json';
    try {

      final response = await http.get(Uri.parse(url));
      final extractedData = json.decode(response.body) as Map<String,dynamic>;
      final List<UserProfile> loadedProfiles=[];
       extractedData.forEach((userId, userData) {
        loadedProfiles.add(
          UserProfile(id: userId , fullName: userData['fullName'],contactNumber: userData['contactNumber'], age: userData['age'], education: userData['education'],email: userData['email'],gender: userData['gender'],interest: userData['interest'])
        );
        _users=loadedProfiles;
      
      
      
        notifyListeners();

       });

      

    } catch (error) {
      print(error);
      throw(error);
    }

    


  }
}



  

//   String get title {
//     if(_User.fullName.isEmpty) {
//       return 'Career Paths';
//     }
//     return 'Hi ' + _User.fullName;

//   }
// }