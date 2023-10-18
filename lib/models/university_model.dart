class UniversityModel {
  final String name;
  final String province;
  final String domain;

  UniversityModel({
    required this.name,
    required this.province,
    required this.domain,
  });

  factory UniversityModel.fromjson(Map<String, dynamic> json) {
    return UniversityModel(
        name: json['name'],
        province: json['state-province'] ?? 'Not Specified',
        domain: json['domains'].join() ?? 'Not Specified');
  }
}
