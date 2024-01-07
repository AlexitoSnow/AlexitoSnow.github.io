class Activity {
  String? name;
  String? institution;
  DateTime? startDate;
  DateTime? endDate;
  String? description;

  Activity({
    this.name,
    this.institution,
    this.startDate,
    this.endDate,
    this.description,
  });

  Activity.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    institution = json['institution'];
    startDate = DateTime.parse(json['start_date']);
    endDate = DateTime.parse(json['end_date']);
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['institution'] = institution;
    data['start_date'] = startDate?.toIso8601String();
    data['end_date'] = endDate?.toIso8601String();
    data['description'] = description;
    return data;
  }
}
