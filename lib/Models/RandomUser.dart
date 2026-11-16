class RandomUsermodel{

  List<dynamic>results;
  RandomUsermodel({required this.results});

  factory RandomUsermodel.fromjson(Map<String,dynamic>json){
    return RandomUsermodel(results: json["results"]);
  }
}