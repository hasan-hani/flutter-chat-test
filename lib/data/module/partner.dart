class Partner {
  int? id;
  int? prtnerId;
  int? cityId;
  int? age;
  int? gender;
  String? date;
  String? userName;
  String? cityName;

  Partner(
      {this.id,
        this.prtnerId,
        this.cityId,
        this.age,
        this.gender,
        this.date,
        this.userName,
        this.cityName});

  factory Partner.fromJson(Map<String, dynamic> json) {
    Partner partner=Partner();
    partner.id = json['id'];
    partner.prtnerId = json['prtnerId'];
    partner.cityId = json['cityId'];
    partner.age = json['age'];
    partner.gender = json['gender'];
    partner.date = json['date'];
    partner.userName = json['userName'];
    partner.cityName = json['cityName'];
    return partner ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['prtnerId'] = this.prtnerId;
    data['cityId'] = this.cityId;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['date'] = this.date;
    data['userName'] = this.userName;
    data['cityName'] = this.cityName;
    return data;
  }
}
