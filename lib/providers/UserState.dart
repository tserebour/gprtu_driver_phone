import 'package:flutter/material.dart';

import '../models/user.dart';

class UserState extends ChangeNotifier{
  User user = User();




  void setUser({
    required User user
  }){
    this.user = user;
    notifyListeners();
  }

  User getUser(){
    return user;
  }


}