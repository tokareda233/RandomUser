import 'package:dio/dio.dart';
import 'package:randomusers_projects/Models/RandomUser.dart';

class Randomuserservice {

static Dio dio =Dio();

static Future<RandomUsermodel> getRondomUserservice()async{
  Response response =await dio.get(
    "https://randomuser.me/api/?results=10"
  );

  return RandomUsermodel.fromjson(response.data);
}

}