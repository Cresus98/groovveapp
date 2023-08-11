



class Country{

  String name,code;
  Country({required this.name,required this.code});
  factory Country.fromJson(Map<String, dynamic> json) =>
      Country(name: json['name'],code: json['code']);
}



