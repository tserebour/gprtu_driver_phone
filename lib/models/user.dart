import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';


class User {
  int id;
  String lastname;
  String firstname;
  String email;
  String location;
  String address;
  String licenseClass;
  String bankName;
  String accountName;
  String accountNumber;
  String pin;
  String vehicleModel;
  String registrationNumber;
  String unionId;
  String unionName;
  String stationId;
  String password;
  String phone;
  String ghanaCardNumber;
  String licenseNumber;
  String stationName;


  final server = "192.168.43.40";
  final port = "8080";

  User({
      this.id = 0,
     this.lastname ="",
     this.firstname ="",
     this.email ="",
     this.location ="",
     this.address ="",
     this.licenseClass ="",
     this.bankName ="",
     this.accountName ="",
     this.accountNumber ="",
     this.pin ="",
     this.vehicleModel ="",
     this.registrationNumber ="",
     this.unionId ="",
     this.unionName ="",
     this.stationId ="",
     this.password ="",
    this.phone ="",
    this.ghanaCardNumber ="",
    this.licenseNumber ="",
    this.stationName ="",
  });

  // A method to create a User from a JSON object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      lastname: json['lastname'],
      firstname: json['firstname'],
      email: json['email'],
      location: json['location'],
      address: json['address'],
      licenseClass: json['license_class'],
      bankName: json['bank_name'],
      accountName: json['account_name'],
      accountNumber: json['account_number'],
      pin: json['pin'],
      vehicleModel: json['vehicle_model'],
      registrationNumber: json['registration_number'],
      unionId: json['union_id'],
      unionName: json['union_name'],
      stationId: json['station_id'],
      password: json['password'],
      phone: json['phone'],
      ghanaCardNumber: json['ghana_card_number'],
      licenseNumber: json['license_number'],
      stationName: json['station_name'],
    );
  }

  // A method to convert a User to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lastname': lastname,
      'firstname': firstname,
      'email': email,
      'location': location,
      'address': address,
      'license_class': licenseClass,
      'bank_name': bankName,
      'account_name': accountName,
      'account_number': accountNumber,
      'pin': pin,
      'vehicle_model': vehicleModel,
      'registration_number': registrationNumber,
      'union_id': unionId,
      'union_name': unionName,
      'station_id': stationId,
      'password': password,
      'phone': phone,
      'ghana_card_number': ghanaCardNumber,
      'license_number': licenseNumber,
      'station_name': stationName,
    };
  }


  // function to ping a server
  Future ping() async {


    var response = await http.get(
      Uri.parse(
        'http://$server:$port/',
      ),


    );
    if (response.statusCode == 200) {

      print(response.body);

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    // print(response);

    // return response;
  }



  Future signUp() async {
    print("object");
    final Map<String, dynamic> data = toJson();
    
    // print(data);

    final body = jsonEncode(data);
    print(body);
    //
    var response = await http.post(
      Uri.parse(
        'http://$server:$port/create',
      ),
      headers: {"Content-Type": "application/json"},
      body: body,

    );
    if (response.statusCode == 200) {

      print(response.body);

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    print(response);

    return response;
  }

  Future signIn() async {
    print("object");

    print(phone);


    if(validateInput(phone, password)){
      final Map<String, dynamic> data = {
        'phone': phone,
        'password': password,
      };



      final body = jsonEncode(data);

      var response = await http.post(
        Uri.parse(
          'http://$server:$port/login',
        ),
        headers: {"Content-Type": "application/json"},
        body: body,

      );
      if (response.statusCode == 200) {
        print(response.body);
        // Map<String, dynamic> userMap = jsonDecode(response.body);

        // User user = User.fromJson(userMap);
        return response.body;

      } else {
        print('Request failed with status: ${response.statusCode}.');
        // return User(username: "", email: "", password: "");
        return "Something went wrong";
      }

      // print(response);

      // return response;
    }else{
      return "Something went wrong";
    }
  }

  Future signOut() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool('signed_in', false);
  }


  bool validateInput(String phone, String password) {



    if (phone.isEmpty || password.isEmpty) {
      print("hoo");
      return false;
    } else if (password.length < 5) {
      return false;
    } else{
      return true;
    }

    // Add more validation rules as needed (e.g., special characters for password)
    // No errors found
  }
}


