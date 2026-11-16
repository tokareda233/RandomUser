import 'package:flutter/foundation.dart';
import 'package:randomusers_projects/Models/RandomUser.dart';
import 'package:randomusers_projects/Services/RandomUserService.dart';

class Randonusersprovider extends ChangeNotifier {

RandomUsermodel?  randomUsermodel;
getRondomUserprovider()async{
  randomUsermodel=await Randomuserservice.getRondomUserservice();
  notifyListeners();
}
}