import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../../core/apiLink.dart';

class Crud {
  postrequest(String url, Map data, Map<String, String>? myheaders) async {
    try {
      var response = await http.post(
          Uri.parse(url),
          body: data,
          headers: myheaders
      );
      if (response.statusCode == 200) {
        Map responsbody = jsonDecode(response.body);
        print(responsbody);
        return responsbody;
      }
      else {
        print(response.statusCode);
      }
    }
    // on SocketException{
    //   print('no intenet') ;
    // }
    // on FormatException{
    //   //dataFormat error
    //   print('erorr Dataformate') ;
    // }
    catch (e) {
      print('catch error is  ${e}');
      if (linkGetAllCity == url) {
        return {
          "result": [
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "Damascuse",
              "id": 1
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "تكيرطاغ (Tekirdağ)",
              "id": 2
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سيواس (Sivas)",
              "id": 3
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سينوب (Sinop)",
              "id": 4
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سيرت (Siirt)",
              "id": 5
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سامسون (Samsun)",
              "id": 6
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "صقاريا (Sakarya)",
              "id": 7
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ريزا (Rize)",
              "id": 8
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "توكات (Tokat)",
              "id": 9
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أردو (Ordu)",
              "id": 10
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "نوشهر (Nevşehir)",
              "id": 11
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "موس (Muş)",
              "id": 12
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "موغلا (Muğla)",
              "id": 13
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ماردين (Mardin)",
              "id": 14
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كارامان (Kahramanmaraş)",
              "id": 15
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "مانيسا (Manisa)",
              "id": 16
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ملاطية (Malatya)",
              "id": 17
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "نيدا (Niğde)",
              "id": 18
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كوتاهيا (Kütahya)",
              "id": 19
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "طرابزون (Trabzon)",
              "id": 20
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "شانلي أورفا (Şanlıurfa)",
              "id": 21
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كيليس (Kilis)",
              "id": 22
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قرة بوك (Karabük)",
              "id": 23
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "يالوفا (Yalova)",
              "id": 24
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "إغدير (Iğdır)",
              "id": 25
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرض خان (Ardahan)",
              "id": 26
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بارتين (Bartın)",
              "id": 27
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "شرناق (Şırnak)",
              "id": 28
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "تونجلي (Tunceli)",
              "id": 29
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "باتمان (Batman)",
              "id": 30
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قرة مان (Karaman)",
              "id": 31
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بايبورت (Bayburt)",
              "id": 32
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أق سراي (Aksaray)",
              "id": 33
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "زونغولداك (Zonguldak)",
              "id": 34
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "يوزكات (Yozgat)",
              "id": 35
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "وان (Van)",
              "id": 36
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أوشاك (Uşak)",
              "id": 37
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كيرِك قلعة (Kırıkkale)",
              "id": 38
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قونية (Konya)",
              "id": 39
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قوجه ايلي (Kocaeli))",
              "id": 40
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قرشهر (Kırşehir)",
              "id": 41
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بورصة (Bursa)",
              "id": 42
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بوردور (Burdur)",
              "id": 43
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بولو (Bolu)",
              "id": 44
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بيطليس - Bitlis ",
              "id": 45
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بينكُل - Bingöl ",
              "id": 46
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بيله جك (Bilecik) ",
              "id": 47
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بالق أسير (Balıkesir)",
              "id": 48
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "جاناكالي (Çanakkale) ",
              "id": 49
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أيطن (Aydın)",
              "id": 50
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أنطاليا (Antalya)",
              "id": 51
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أماسيا (Amasya)",
              "id": 52
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أفيون (Afyon)",
              "id": 53
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أديامان (Adıyaman)",
              "id": 54
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أضنة - ADANA",
              "id": 55
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ازمير - İZMİR",
              "id": 56
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أنقرة - ANKARA",
              "id": 57
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرتوين (Artvin)",
              "id": 58
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "جانقري (Çankırı) ",
              "id": 59
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "جوروم (Çorum) ",
              "id": 60
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "دنيزلي (Denizli) ",
              "id": 61
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كيركلاريلي (Kırklareli)",
              "id": 62
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قيصرية (Kayseri)",
              "id": 63
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قسطموني (Kastamonu) ",
              "id": 64
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كارس (Kars)",
              "id": 65
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "مرسين (Mersin) ",
              "id": 66
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "إسبرطة (Isparta) ",
              "id": 67
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "خطاي (Hattay)) ",
              "id": 68
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "حقاري (Hakkari) ",
              "id": 69
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كوموش خانة (Gümüşhane) ",
              "id": 70
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "غيرسون (Giresun) ",
              "id": 71
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "غازي عينتاب (Gaziantep)",
              "id": 72
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أسكي شهر (Eskişehir) ",
              "id": 73
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرضروم (Erzurum)",
              "id": 74
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرزينجان (Erzincan) ",
              "id": 75
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "إلازِغ (Elazığ) ",
              "id": 76
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أدرنة (Edirne)",
              "id": 77
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ديار بكر (Diyarbakır) ",
              "id": 78
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "عثمانية (Osmaniye)",
              "id": 79
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "دوزجه (Düzce",
              "id": 80
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "سكاكا",
              "id": 81
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الباحه",
              "id": 82
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "نجران",
              "id": 83
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "عرعر",
              "id": 84
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "حائل",
              "id": 85
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "تبوك",
              "id": 86
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "ابها",
              "id": 87
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الدمام",
              "id": 88
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "القصيم",
              "id": 89
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الاحساء",
              "id": 90
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "جده",
              "id": 91
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "المدينه المنوره",
              "id": 92
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "مكه المكرمه ",
              "id": 93
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الرياض",
              "id": 94
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "الفجيره",
              "id": 95
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "راس الخيمه",
              "id": 96
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "ام القيوين",
              "id": 97
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "عجمان",
              "id": 98
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "الشارقه",
              "id": 99
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "دبي",
              "id": 100
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "أبو ظبي",
              "id": 101
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "ادلب",
              "id": 102
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "قنيطره",
              "id": 103
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "ريف دمشق",
              "id": 104
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "رقه",
              "id": 105
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "الحسكه",
              "id": 106
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "دير الزور",
              "id": 107
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "سويداء",
              "id": 108
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "درعا",
              "id": 109
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "طرطوس",
              "id": 110
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "اللاذقيه",
              "id": 111
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "حمص",
              "id": 112
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "حماه",
              "id": 113
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "حلب",
              "id": 114
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "دمشق",
              "id": 115
            },
            {
              "countryId": 5,
              "countryName": "China - صين",
              "name": "بكين - Běijīng",
              "id": 116
            },
            {
              "countryId": 6,
              "countryName": "Britain - بريطانيا",
              "name": "لندن - London",
              "id": 117
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "كاليفورنيا - California",
              "id": 118
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "ميشيغان - Michigan",
              "id": 119
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "نيوجرسي - New Jersey",
              "id": 120
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "نيويورك - New York",
              "id": 121
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "واشنطن - Washington",
              "id": 122
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "بون - Bonn",
              "id": 123
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "بوخوم - Bochum",
              "id": 124
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "درسدن - Dresden",
              "id": 125
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "نورنبرغ - Nürnberg ",
              "id": 126
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "دويسبورغ - Duisburg",
              "id": 127
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "لايبزنغ - Leipzig",
              "id": 128
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "هانوفر - Hannover",
              "id": 129
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "بريمن - Bremen",
              "id": 130
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "دوسيلدورف - Düsseldorf",
              "id": 131
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "ايسين - Essen",
              "id": 132
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "دورتموند - Dortmund",
              "id": 133
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "شتوتغارت - Stuttgart",
              "id": 134
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "كولون - Koeln",
              "id": 135
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "ميونخ - Munich",
              "id": 136
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "Hamburg - هامبورغ",
              "id": 137
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "Berlin - برلين",
              "id": 138
            },
            {
              "countryId": 9,
              "countryName": "France - فرنسا",
              "name": "ليون - Lyon",
              "id": 139
            },
            {
              "countryId": 9,
              "countryName": "France - فرنسا",
              "name": "باريس - Paris",
              "id": 140
            },
            {
              "countryId": 10,
              "countryName": "Egypt - مصر",
              "name": "الاسكندريه",
              "id": 141
            },
            {
              "countryId": 10,
              "countryName": "Egypt - مصر",
              "name": "القاهره",
              "id": 142
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "كركوك",
              "id": 143
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "بابل",
              "id": 144
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "السليمانيه",
              "id": 145
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "دهوك",
              "id": 146
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "البصره",
              "id": 147
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "كربلاء",
              "id": 148
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "النجف",
              "id": 149
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "أربيل",
              "id": 150
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "بغداد",
              "id": 151
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الجهراء",
              "id": 152
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الفروانيه",
              "id": 153
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الاحمدي",
              "id": 154
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الكويت",
              "id": 155
            },
            {
              "countryId": 13,
              "countryName": "Qatar - قطر",
              "name": "الدوحه",
              "id": 156
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "الرزقاء",
              "id": 157
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "الكرك",
              "id": 158
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "العقبه",
              "id": 159
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "اربد",
              "id": 160
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "عمان ",
              "id": 161
            },
            {
              "countryId": 15,
              "countryName": "Bahrain - بحرين",
              "name": "المنامه",
              "id": 162
            },
            {
              "countryId": 16,
              "countryName": "Sudan - سودان",
              "name": "الخرطوم",
              "id": 163
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "صور",
              "id": 164
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "شتورا",
              "id": 165
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "صيدا",
              "id": 166
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "عكار",
              "id": 167
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "طرابلس",
              "id": 168
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "بيروت",
              "id": 169
            },
            {
              "countryId": 18,
              "countryName": "Yemen - يمن",
              "name": "صنعاء",
              "id": 170
            },
            {
              "countryId": 19,
              "countryName": "Somalia - صومال",
              "name": "مقديشو",
              "id": 171
            },
            {
              "countryId": 20,
              "countryName": "Mauritania - موريتانيا",
              "name": "نواكشوط",
              "id": 172
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " سوديرمانلاند - Södermanland",
              "id": 173
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " أوبسالا - Uppsala",
              "id": 174
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " نوربوتن - Norrbotten",
              "id": 175
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " فاستربوتن - Västerbotten",
              "id": 176
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": "ستوكهولم - Stockholm",
              "id": 177
            },
            {
              "countryId": 22,
              "countryName": "Norway - نروج",
              "name": "أوسلو - Oslo",
              "id": 178
            },
            {
              "countryId": 23,
              "countryName": "Denmark - دنمارك",
              "name": "كوبنهاغن - København",
              "id": 179
            },
            {
              "countryId": 24,
              "countryName": "Russia - روسيا",
              "name": "موسكو - Москва",
              "id": 180
            },
            {
              "countryId": 25,
              "countryName": "Oman - سلطنة عمان",
              "name": "مسقط",
              "id": 181
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "مراكش",
              "id": 182
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "الرباط",
              "id": 183
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "فاس",
              "id": 184
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "الدار البيضاء",
              "id": 185
            },
            {
              "countryId": 27,
              "countryName": "Brazil - البرازيل",
              "name": "سلفادور - Salvador",
              "id": 186
            },
            {
              "countryId": 27,
              "countryName": "Brazil - البرازيل",
              "name": "ريو دي جانيرو - Rio de Janeiro",
              "id": 187
            },
            {
              "countryId": 27,
              "countryName": "Brazil - البرازيل",
              "name": "ساو باولو - Sao Paulo",
              "id": 188
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "بنغازي",
              "id": 189
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "سرت",
              "id": 190
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "مصراته",
              "id": 191
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "صبراته",
              "id": 192
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "طرابلس الغرب",
              "id": 193
            },
            {
              "countryId": 29,
              "countryName": "Iran - ايران",
              "name": "طهران - Tehran",
              "id": 194
            },
            {
              "countryId": 30,
              "countryName": "Canada - كندا",
              "name": "مونتريال - Montreal",
              "id": 195
            },
            {
              "countryId": 30,
              "countryName": "Canada - كندا",
              "name": "تورنتو - Toronto",
              "id": 196
            },
            {
              "countryId": 30,
              "countryName": "Canada - كندا",
              "name": "اونتاريو - Ontario",
              "id": 197
            },
            {
              "countryId": 31,
              "countryName": "Malaysia - ماليزيا",
              "name": "كوالالمبور - Kuala Lumpur",
              "id": 198
            },
            {
              "countryId": 32,
              "countryName": "Algeria - جزائر",
              "name": "عنابه",
              "id": 199
            },
            {
              "countryId": 32,
              "countryName": "Algeria - جزائر",
              "name": "وهران",
              "id": 200
            }
          ],
          "targetUrl": null,
          "success": true,
          "error": null,
          "unAuthorizedRequest": false,
          "__abp": true
        };
      }
      if (linkGetAllCountry == url) {
        return {
          "result": [
            {
              "name": "Syria",
              "cities": [
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "Damascuse",
                  "id": 1
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "تكيرطاغ (Tekirdağ)",
                  "id": 2
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سيواس (Sivas)",
                  "id": 3
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سينوب (Sinop)",
                  "id": 4
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سيرت (Siirt)",
                  "id": 5
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سامسون (Samsun)",
                  "id": 6
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "صقاريا (Sakarya)",
                  "id": 7
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ريزا (Rize)",
                  "id": 8
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "توكات (Tokat)",
                  "id": 9
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أردو (Ordu)",
                  "id": 10
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "نوشهر (Nevşehir)",
                  "id": 11
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "موس (Muş)",
                  "id": 12
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "موغلا (Muğla)",
                  "id": 13
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ماردين (Mardin)",
                  "id": 14
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كارامان (Kahramanmaraş)",
                  "id": 15
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "مانيسا (Manisa)",
                  "id": 16
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ملاطية (Malatya)",
                  "id": 17
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "نيدا (Niğde)",
                  "id": 18
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كوتاهيا (Kütahya)",
                  "id": 19
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "طرابزون (Trabzon)",
                  "id": 20
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "شانلي أورفا (Şanlıurfa)",
                  "id": 21
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كيليس (Kilis)",
                  "id": 22
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قرة بوك (Karabük)",
                  "id": 23
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "يالوفا (Yalova)",
                  "id": 24
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "إغدير (Iğdır)",
                  "id": 25
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرض خان (Ardahan)",
                  "id": 26
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بارتين (Bartın)",
                  "id": 27
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "شرناق (Şırnak)",
                  "id": 28
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "تونجلي (Tunceli)",
                  "id": 29
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "باتمان (Batman)",
                  "id": 30
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قرة مان (Karaman)",
                  "id": 31
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بايبورت (Bayburt)",
                  "id": 32
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أق سراي (Aksaray)",
                  "id": 33
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "زونغولداك (Zonguldak)",
                  "id": 34
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "يوزكات (Yozgat)",
                  "id": 35
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "وان (Van)",
                  "id": 36
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أوشاك (Uşak)",
                  "id": 37
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كيرِك قلعة (Kırıkkale)",
                  "id": 38
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قونية (Konya)",
                  "id": 39
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قوجه ايلي (Kocaeli))",
                  "id": 40
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قرشهر (Kırşehir)",
                  "id": 41
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بورصة (Bursa)",
                  "id": 42
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بوردور (Burdur)",
                  "id": 43
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بولو (Bolu)",
                  "id": 44
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بيطليس - Bitlis ",
                  "id": 45
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بينكُل - Bingöl ",
                  "id": 46
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بيله جك (Bilecik) ",
                  "id": 47
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بالق أسير (Balıkesir)",
                  "id": 48
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "جاناكالي (Çanakkale) ",
                  "id": 49
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أيطن (Aydın)",
                  "id": 50
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أنطاليا (Antalya)",
                  "id": 51
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أماسيا (Amasya)",
                  "id": 52
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أفيون (Afyon)",
                  "id": 53
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أديامان (Adıyaman)",
                  "id": 54
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أضنة - ADANA",
                  "id": 55
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ازمير - İZMİR",
                  "id": 56
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أنقرة - ANKARA",
                  "id": 57
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرتوين (Artvin)",
                  "id": 58
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "جانقري (Çankırı) ",
                  "id": 59
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "جوروم (Çorum) ",
                  "id": 60
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "دنيزلي (Denizli) ",
                  "id": 61
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كيركلاريلي (Kırklareli)",
                  "id": 62
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قيصرية (Kayseri)",
                  "id": 63
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قسطموني (Kastamonu) ",
                  "id": 64
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كارس (Kars)",
                  "id": 65
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "مرسين (Mersin) ",
                  "id": 66
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "إسبرطة (Isparta) ",
                  "id": 67
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "خطاي (Hattay)) ",
                  "id": 68
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "حقاري (Hakkari) ",
                  "id": 69
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كوموش خانة (Gümüşhane) ",
                  "id": 70
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "غيرسون (Giresun) ",
                  "id": 71
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "غازي عينتاب (Gaziantep)",
                  "id": 72
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أسكي شهر (Eskişehir) ",
                  "id": 73
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرضروم (Erzurum)",
                  "id": 74
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرزينجان (Erzincan) ",
                  "id": 75
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "إلازِغ (Elazığ) ",
                  "id": 76
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أدرنة (Edirne)",
                  "id": 77
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ديار بكر (Diyarbakır) ",
                  "id": 78
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "عثمانية (Osmaniye)",
                  "id": 79
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "دوزجه (Düzce",
                  "id": 80
                }
              ],
              "id": 1
            },
            {
              "name": "Saudi - السعودية",
              "cities": [
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "سكاكا",
                  "id": 81
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الباحه",
                  "id": 82
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "نجران",
                  "id": 83
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "عرعر",
                  "id": 84
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "حائل",
                  "id": 85
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "تبوك",
                  "id": 86
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "ابها",
                  "id": 87
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الدمام",
                  "id": 88
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "القصيم",
                  "id": 89
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الاحساء",
                  "id": 90
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "جده",
                  "id": 91
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "المدينه المنوره",
                  "id": 92
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "مكه المكرمه ",
                  "id": 93
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الرياض",
                  "id": 94
                }
              ],
              "id": 2
            },
            {
              "name": "Emirates - امارات",
              "cities": [
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "الفجيره",
                  "id": 95
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "راس الخيمه",
                  "id": 96
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "ام القيوين",
                  "id": 97
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "عجمان",
                  "id": 98
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "الشارقه",
                  "id": 99
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "دبي",
                  "id": 100
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "أبو ظبي",
                  "id": 101
                }
              ],
              "id": 3
            },
            {
              "name": "Syria - سورية",
              "cities": [
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "ادلب",
                  "id": 102
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "قنيطره",
                  "id": 103
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "ريف دمشق",
                  "id": 104
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "رقه",
                  "id": 105
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "الحسكه",
                  "id": 106
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "دير الزور",
                  "id": 107
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "سويداء",
                  "id": 108
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "درعا",
                  "id": 109
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "طرطوس",
                  "id": 110
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "اللاذقيه",
                  "id": 111
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "حمص",
                  "id": 112
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "حماه",
                  "id": 113
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "حلب",
                  "id": 114
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "دمشق",
                  "id": 115
                }
              ],
              "id": 4
            },
            {
              "name": "China - صين",
              "cities": [
                {
                  "countryId": 5,
                  "countryName": "China - صين",
                  "name": "بكين - Běijīng",
                  "id": 116
                }
              ],
              "id": 5
            },
            {
              "name": "Britain - بريطانيا",
              "cities": [
                {
                  "countryId": 6,
                  "countryName": "Britain - بريطانيا",
                  "name": "لندن - London",
                  "id": 117
                }
              ],
              "id": 6
            },
            {
              "name": "UAS - أمريكا",
              "cities": [
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "كاليفورنيا - California",
                  "id": 118
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "ميشيغان - Michigan",
                  "id": 119
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "نيوجرسي - New Jersey",
                  "id": 120
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "نيويورك - New York",
                  "id": 121
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "واشنطن - Washington",
                  "id": 122
                }
              ],
              "id": 7
            },
            {
              "name": "Germany - المانيا",
              "cities": [
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "بون - Bonn",
                  "id": 123
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "بوخوم - Bochum",
                  "id": 124
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "درسدن - Dresden",
                  "id": 125
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "نورنبرغ - Nürnberg ",
                  "id": 126
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "دويسبورغ - Duisburg",
                  "id": 127
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "لايبزنغ - Leipzig",
                  "id": 128
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "هانوفر - Hannover",
                  "id": 129
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "بريمن - Bremen",
                  "id": 130
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "دوسيلدورف - Düsseldorf",
                  "id": 131
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "ايسين - Essen",
                  "id": 132
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "دورتموند - Dortmund",
                  "id": 133
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "شتوتغارت - Stuttgart",
                  "id": 134
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "كولون - Koeln",
                  "id": 135
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "ميونخ - Munich",
                  "id": 136
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "Hamburg - هامبورغ",
                  "id": 137
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "Berlin - برلين",
                  "id": 138
                }
              ],
              "id": 8
            },
            {
              "name": "France - فرنسا",
              "cities": [
                {
                  "countryId": 9,
                  "countryName": "France - فرنسا",
                  "name": "ليون - Lyon",
                  "id": 139
                },
                {
                  "countryId": 9,
                  "countryName": "France - فرنسا",
                  "name": "باريس - Paris",
                  "id": 140
                }
              ],
              "id": 9
            },
            {
              "name": "Egypt - مصر",
              "cities": [
                {
                  "countryId": 10,
                  "countryName": "Egypt - مصر",
                  "name": "الاسكندريه",
                  "id": 141
                },
                {
                  "countryId": 10,
                  "countryName": "Egypt - مصر",
                  "name": "القاهره",
                  "id": 142
                }
              ],
              "id": 10
            },
            {
              "name": "Iraqi - عراق",
              "cities": [
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "كركوك",
                  "id": 143
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "بابل",
                  "id": 144
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "السليمانيه",
                  "id": 145
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "دهوك",
                  "id": 146
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "البصره",
                  "id": 147
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "كربلاء",
                  "id": 148
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "النجف",
                  "id": 149
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "أربيل",
                  "id": 150
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "بغداد",
                  "id": 151
                }
              ],
              "id": 11
            },
            {
              "name": "Kuwait - كويت",
              "cities": [
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الجهراء",
                  "id": 152
                },
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الفروانيه",
                  "id": 153
                },
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الاحمدي",
                  "id": 154
                },
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الكويت",
                  "id": 155
                }
              ],
              "id": 12
            },
            {
              "name": "Qatar - قطر",
              "cities": [
                {
                  "countryId": 13,
                  "countryName": "Qatar - قطر",
                  "name": "الدوحه",
                  "id": 156
                }
              ],
              "id": 13
            },
            {
              "name": "Jordan - الأردن ",
              "cities": [
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "الرزقاء",
                  "id": 157
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "الكرك",
                  "id": 158
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "العقبه",
                  "id": 159
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "اربد",
                  "id": 160
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "عمان ",
                  "id": 161
                }
              ],
              "id": 14
            },
            {
              "name": "Bahrain - بحرين",
              "cities": [
                {
                  "countryId": 15,
                  "countryName": "Bahrain - بحرين",
                  "name": "المنامه",
                  "id": 162
                }
              ],
              "id": 15
            },
            {
              "name": "Sudan - سودان",
              "cities": [
                {
                  "countryId": 16,
                  "countryName": "Sudan - سودان",
                  "name": "الخرطوم",
                  "id": 163
                }
              ],
              "id": 16
            },
            {
              "name": "Lebanon - لبنان",
              "cities": [
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "صور",
                  "id": 164
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "شتورا",
                  "id": 165
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "صيدا",
                  "id": 166
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "عكار",
                  "id": 167
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "طرابلس",
                  "id": 168
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "بيروت",
                  "id": 169
                }
              ],
              "id": 17
            },
            {
              "name": "Yemen - يمن",
              "cities": [
                {
                  "countryId": 18,
                  "countryName": "Yemen - يمن",
                  "name": "صنعاء",
                  "id": 170
                }
              ],
              "id": 18
            },
            {
              "name": "Somalia - صومال",
              "cities": [
                {
                  "countryId": 19,
                  "countryName": "Somalia - صومال",
                  "name": "مقديشو",
                  "id": 171
                }
              ],
              "id": 19
            },
            {
              "name": "Mauritania - موريتانيا",
              "cities": [
                {
                  "countryId": 20,
                  "countryName": "Mauritania - موريتانيا",
                  "name": "نواكشوط",
                  "id": 172
                }
              ],
              "id": 20
            },
            {
              "name": "Sweden - سويد",
              "cities": [
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " سوديرمانلاند - Södermanland",
                  "id": 173
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " أوبسالا - Uppsala",
                  "id": 174
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " نوربوتن - Norrbotten",
                  "id": 175
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " فاستربوتن - Västerbotten",
                  "id": 176
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": "ستوكهولم - Stockholm",
                  "id": 177
                }
              ],
              "id": 21
            },
            {
              "name": "Norway - نروج",
              "cities": [
                {
                  "countryId": 22,
                  "countryName": "Norway - نروج",
                  "name": "أوسلو - Oslo",
                  "id": 178
                }
              ],
              "id": 22
            },
            {
              "name": "Denmark - دنمارك",
              "cities": [
                {
                  "countryId": 23,
                  "countryName": "Denmark - دنمارك",
                  "name": "كوبنهاغن - København",
                  "id": 179
                }
              ],
              "id": 23
            },
            {
              "name": "Russia - روسيا",
              "cities": [
                {
                  "countryId": 24,
                  "countryName": "Russia - روسيا",
                  "name": "موسكو - Москва",
                  "id": 180
                }
              ],
              "id": 24
            },
            {
              "name": "Oman - سلطنة عمان",
              "cities": [
                {
                  "countryId": 25,
                  "countryName": "Oman - سلطنة عمان",
                  "name": "مسقط",
                  "id": 181
                }
              ],
              "id": 25
            },
            {
              "name": "Morocco - مغرب",
              "cities": [
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "مراكش",
                  "id": 182
                },
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "الرباط",
                  "id": 183
                },
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "فاس",
                  "id": 184
                },
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "الدار البيضاء",
                  "id": 185
                }
              ],
              "id": 26
            },
            {
              "name": "Brazil - البرازيل",
              "cities": [
                {
                  "countryId": 27,
                  "countryName": "Brazil - البرازيل",
                  "name": "سلفادور - Salvador",
                  "id": 186
                },
                {
                  "countryId": 27,
                  "countryName": "Brazil - البرازيل",
                  "name": "ريو دي جانيرو - Rio de Janeiro",
                  "id": 187
                },
                {
                  "countryId": 27,
                  "countryName": "Brazil - البرازيل",
                  "name": "ساو باولو - Sao Paulo",
                  "id": 188
                }
              ],
              "id": 27
            },
            {
              "name": "Libya - ليبيا",
              "cities": [
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "بنغازي",
                  "id": 189
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "سرت",
                  "id": 190
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "مصراته",
                  "id": 191
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "صبراته",
                  "id": 192
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "طرابلس الغرب",
                  "id": 193
                }
              ],
              "id": 28
            },
            {
              "name": "Iran - ايران",
              "cities": [
                {
                  "countryId": 29,
                  "countryName": "Iran - ايران",
                  "name": "طهران - Tehran",
                  "id": 194
                }
              ],
              "id": 29
            },
            {
              "name": "Canada - كندا",
              "cities": [
                {
                  "countryId": 30,
                  "countryName": "Canada - كندا",
                  "name": "مونتريال - Montreal",
                  "id": 195
                },
                {
                  "countryId": 30,
                  "countryName": "Canada - كندا",
                  "name": "تورنتو - Toronto",
                  "id": 196
                },
                {
                  "countryId": 30,
                  "countryName": "Canada - كندا",
                  "name": "اونتاريو - Ontario",
                  "id": 197
                }
              ],
              "id": 30
            },
            {
              "name": "Malaysia - ماليزيا",
              "cities": [
                {
                  "countryId": 31,
                  "countryName": "Malaysia - ماليزيا",
                  "name": "كوالالمبور - Kuala Lumpur",
                  "id": 198
                }
              ],
              "id": 31
            },
            {
              "name": "Algeria - جزائر",
              "cities": [
                {
                  "countryId": 32,
                  "countryName": "Algeria - جزائر",
                  "name": "عنابه",
                  "id": 199
                },
                {
                  "countryId": 32,
                  "countryName": "Algeria - جزائر",
                  "name": "وهران",
                  "id": 200
                }
              ],
              "id": 32
            },
            {
              "name": "Indonesia - اندونيسيا",
              "cities": [],
              "id": 33
            },
            {
              "name": "South Korea - كوريا الجنوبيه ",
              "cities": [],
              "id": 34
            },
            {
              "name": "India - الهند",
              "cities": [],
              "id": 35
            },
            {
              "name": "Australian - استراليا",
              "cities": [],
              "id": 36
            },
            {
              "name": "Singapore - سنغافورا",
              "cities": [],
              "id": 37
            },
            {
              "name": "Switzerland - سويسرا",
              "cities": [],
              "id": 38
            },
            {
              "name": "Japan - يابان",
              "cities": [],
              "id": 39
            },
            {
              "name": "New Zealand - نيوزيلندا",
              "cities": [],
              "id": 40
            },
            {
              "name": "Hong Kong - هونغ كونغ",
              "cities": [],
              "id": 41
            },
            {
              "name": "Mexico - مكسيك",
              "cities": [],
              "id": 42
            },
            {
              "name": "South Africa - جنوب افريقيا",
              "cities": [],
              "id": 43
            },
            {
              "name": "Philippines - فلبين",
              "cities": [],
              "id": 44
            },
            {
              "name": "Pakistan - باكستان ",
              "cities": [],
              "id": 45
            },
            {
              "name": "Poland - بولندا",
              "cities": [],
              "id": 46
            },
            {
              "name": "Colombia - كولومبيا",
              "cities": [],
              "id": 47
            },
            {
              "name": "Chile - تشيلي",
              "cities": [],
              "id": 48
            },
            {
              "name": "Taiwan - تايوان",
              "cities": [],
              "id": 49
            },
            {
              "name": "Argentina - ارجنتين",
              "cities": [],
              "id": 50
            },
            {
              "name": "Czech - تشيك",
              "cities": [],
              "id": 51
            },
            {
              "name": "Vietnam - فيتنام",
              "cities": [],
              "id": 52
            },
            {
              "name": "Sri Lanka - سيريلانكا",
              "cities": [],
              "id": 53
            },
            {
              "name": "Ukraine - أوكرانيا",
              "cities": [],
              "id": 54
            },
            {
              "name": "Nigeria - نيجيريا",
              "cities": [],
              "id": 55
            },
            {
              "name": "Tunisia - تونس",
              "cities": [],
              "id": 56
            },
            {
              "name": "Uganda - اوغندا",
              "cities": [],
              "id": 57
            },
            {
              "name": "Romania - رومانيا",
              "cities": [],
              "id": 58
            },
            {
              "name": "Bangladesh - بنغلادش",
              "cities": [],
              "id": 59
            },
            {
              "name": "Georgia - جورجيا",
              "cities": [],
              "id": 60
            },
            {
              "name": "Croatia - كرواتيا",
              "cities": [],
              "id": 61
            },
            {
              "name": "Uzbekistan - اوزباكستان",
              "cities": [],
              "id": 62
            },
            {
              "name": "Bulgaria - بلغاريا",
              "cities": [],
              "id": 63
            },
            {
              "name": "Uruguay - اوروغواي",
              "cities": [],
              "id": 64
            },
            {
              "name": "Guinea - غينيا",
              "cities": [],
              "id": 65
            },
            {
              "name": "Djibouti - جيبوتي",
              "cities": [],
              "id": 66
            },
            {
              "name": "Austria - النمسا",
              "cities": [],
              "id": 67
            },
            {
              "name": "Cyprus - قبرص",
              "cities": [],
              "id": 68
            },
            {
              "name": "Greece - اليونان",
              "cities": [],
              "id": 69
            },
            {
              "name": "Albania - البانيا",
              "cities": [],
              "id": 70
            },
            {
              "name": "Armenia - أرمينيا",
              "cities": [],
              "id": 71
            },
            {
              "name": "Azerbaijan - أذربيجان",
              "cities": [],
              "id": 72
            },
            {
              "name": "Belgium - بلجيكا",
              "cities": [],
              "id": 73
            },
            {
              "name": "Hungary - هنغاريا",
              "cities": [],
              "id": 74
            },
            {
              "name": "Ireland - ايرلندا",
              "cities": [],
              "id": 75
            },
            {
              "name": "Italy - إيطاليا",
              "cities": [],
              "id": 76
            },
            {
              "name": "Lithuania - ليتوانيا",
              "cities": [],
              "id": 77
            },
            {
              "name": "Netherlands - هولندا",
              "cities": [],
              "id": 78
            }
          ],
          "targetUrl": null,
          "success": true,
          "error": null,
          "unAuthorizedRequest": false,
          "__abp": true
        };
      }
      if (linkregister == url) {
        return {
          "result": {
            "canLogin": true
          },
          "targetUrl": null,
          "success": true,
          "error": null,
          "unAuthorizedRequest": false,
          "__abp": true
        };
      }
      if (linkLogin == url) {
        return {
          "accessToken": "string",
          "encryptedAccessToken": "string",
          "expireInSeconds": 0,
          "userId": 0
        };
      }
    }
  }

  getrequest(String url, Map<String, String>? myheaders) async {
    try {
      var response = await http.get(
          Uri.parse(url),
          headers: myheaders
      );
      if (response.statusCode == 200) {
        Map responsbody = jsonDecode(response.body);
        print('=================resonse body===================');
        print(responsbody);
        return responsbody;
      }
      else {
        print(response.statusCode);
      }
    }
    on SocketException {
      print('no intenet');
    }
    on FormatException {
      //dataFormat error
      print('erorr Dataformate');
    }
    catch (e) {
      print('catch error is  ${e}');
      if (linkGetAllCity == url) {
        return {
          "result": [
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "Damascuse",
              "id": 1
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "تكيرطاغ (Tekirdağ)",
              "id": 2
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سيواس (Sivas)",
              "id": 3
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سينوب (Sinop)",
              "id": 4
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سيرت (Siirt)",
              "id": 5
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "سامسون (Samsun)",
              "id": 6
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "صقاريا (Sakarya)",
              "id": 7
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ريزا (Rize)",
              "id": 8
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "توكات (Tokat)",
              "id": 9
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أردو (Ordu)",
              "id": 10
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "نوشهر (Nevşehir)",
              "id": 11
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "موس (Muş)",
              "id": 12
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "موغلا (Muğla)",
              "id": 13
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ماردين (Mardin)",
              "id": 14
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كارامان (Kahramanmaraş)",
              "id": 15
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "مانيسا (Manisa)",
              "id": 16
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ملاطية (Malatya)",
              "id": 17
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "نيدا (Niğde)",
              "id": 18
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كوتاهيا (Kütahya)",
              "id": 19
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "طرابزون (Trabzon)",
              "id": 20
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "شانلي أورفا (Şanlıurfa)",
              "id": 21
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كيليس (Kilis)",
              "id": 22
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قرة بوك (Karabük)",
              "id": 23
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "يالوفا (Yalova)",
              "id": 24
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "إغدير (Iğdır)",
              "id": 25
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرض خان (Ardahan)",
              "id": 26
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بارتين (Bartın)",
              "id": 27
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "شرناق (Şırnak)",
              "id": 28
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "تونجلي (Tunceli)",
              "id": 29
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "باتمان (Batman)",
              "id": 30
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قرة مان (Karaman)",
              "id": 31
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بايبورت (Bayburt)",
              "id": 32
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أق سراي (Aksaray)",
              "id": 33
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "زونغولداك (Zonguldak)",
              "id": 34
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "يوزكات (Yozgat)",
              "id": 35
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "وان (Van)",
              "id": 36
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أوشاك (Uşak)",
              "id": 37
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كيرِك قلعة (Kırıkkale)",
              "id": 38
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قونية (Konya)",
              "id": 39
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قوجه ايلي (Kocaeli))",
              "id": 40
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قرشهر (Kırşehir)",
              "id": 41
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بورصة (Bursa)",
              "id": 42
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بوردور (Burdur)",
              "id": 43
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بولو (Bolu)",
              "id": 44
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بيطليس - Bitlis ",
              "id": 45
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بينكُل - Bingöl ",
              "id": 46
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بيله جك (Bilecik) ",
              "id": 47
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "بالق أسير (Balıkesir)",
              "id": 48
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "جاناكالي (Çanakkale) ",
              "id": 49
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أيطن (Aydın)",
              "id": 50
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أنطاليا (Antalya)",
              "id": 51
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أماسيا (Amasya)",
              "id": 52
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أفيون (Afyon)",
              "id": 53
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أديامان (Adıyaman)",
              "id": 54
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أضنة - ADANA",
              "id": 55
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ازمير - İZMİR",
              "id": 56
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أنقرة - ANKARA",
              "id": 57
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرتوين (Artvin)",
              "id": 58
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "جانقري (Çankırı) ",
              "id": 59
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "جوروم (Çorum) ",
              "id": 60
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "دنيزلي (Denizli) ",
              "id": 61
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كيركلاريلي (Kırklareli)",
              "id": 62
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قيصرية (Kayseri)",
              "id": 63
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "قسطموني (Kastamonu) ",
              "id": 64
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كارس (Kars)",
              "id": 65
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "مرسين (Mersin) ",
              "id": 66
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "إسبرطة (Isparta) ",
              "id": 67
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "خطاي (Hattay)) ",
              "id": 68
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "حقاري (Hakkari) ",
              "id": 69
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "كوموش خانة (Gümüşhane) ",
              "id": 70
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "غيرسون (Giresun) ",
              "id": 71
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "غازي عينتاب (Gaziantep)",
              "id": 72
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أسكي شهر (Eskişehir) ",
              "id": 73
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرضروم (Erzurum)",
              "id": 74
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أرزينجان (Erzincan) ",
              "id": 75
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "إلازِغ (Elazığ) ",
              "id": 76
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "أدرنة (Edirne)",
              "id": 77
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "ديار بكر (Diyarbakır) ",
              "id": 78
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "عثمانية (Osmaniye)",
              "id": 79
            },
            {
              "countryId": 1,
              "countryName": "Syria",
              "name": "دوزجه (Düzce",
              "id": 80
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "سكاكا",
              "id": 81
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الباحه",
              "id": 82
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "نجران",
              "id": 83
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "عرعر",
              "id": 84
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "حائل",
              "id": 85
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "تبوك",
              "id": 86
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "ابها",
              "id": 87
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الدمام",
              "id": 88
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "القصيم",
              "id": 89
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الاحساء",
              "id": 90
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "جده",
              "id": 91
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "المدينه المنوره",
              "id": 92
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "مكه المكرمه ",
              "id": 93
            },
            {
              "countryId": 2,
              "countryName": "Saudi - السعودية",
              "name": "الرياض",
              "id": 94
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "الفجيره",
              "id": 95
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "راس الخيمه",
              "id": 96
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "ام القيوين",
              "id": 97
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "عجمان",
              "id": 98
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "الشارقه",
              "id": 99
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "دبي",
              "id": 100
            },
            {
              "countryId": 3,
              "countryName": "Emirates - امارات",
              "name": "أبو ظبي",
              "id": 101
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "ادلب",
              "id": 102
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "قنيطره",
              "id": 103
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "ريف دمشق",
              "id": 104
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "رقه",
              "id": 105
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "الحسكه",
              "id": 106
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "دير الزور",
              "id": 107
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "سويداء",
              "id": 108
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "درعا",
              "id": 109
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "طرطوس",
              "id": 110
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "اللاذقيه",
              "id": 111
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "حمص",
              "id": 112
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "حماه",
              "id": 113
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "حلب",
              "id": 114
            },
            {
              "countryId": 4,
              "countryName": "Syria - سورية",
              "name": "دمشق",
              "id": 115
            },
            {
              "countryId": 5,
              "countryName": "China - صين",
              "name": "بكين - Běijīng",
              "id": 116
            },
            {
              "countryId": 6,
              "countryName": "Britain - بريطانيا",
              "name": "لندن - London",
              "id": 117
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "كاليفورنيا - California",
              "id": 118
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "ميشيغان - Michigan",
              "id": 119
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "نيوجرسي - New Jersey",
              "id": 120
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "نيويورك - New York",
              "id": 121
            },
            {
              "countryId": 7,
              "countryName": "UAS - أمريكا",
              "name": "واشنطن - Washington",
              "id": 122
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "بون - Bonn",
              "id": 123
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "بوخوم - Bochum",
              "id": 124
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "درسدن - Dresden",
              "id": 125
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "نورنبرغ - Nürnberg ",
              "id": 126
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "دويسبورغ - Duisburg",
              "id": 127
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "لايبزنغ - Leipzig",
              "id": 128
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "هانوفر - Hannover",
              "id": 129
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "بريمن - Bremen",
              "id": 130
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "دوسيلدورف - Düsseldorf",
              "id": 131
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "ايسين - Essen",
              "id": 132
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "دورتموند - Dortmund",
              "id": 133
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "شتوتغارت - Stuttgart",
              "id": 134
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "كولون - Koeln",
              "id": 135
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "ميونخ - Munich",
              "id": 136
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "Hamburg - هامبورغ",
              "id": 137
            },
            {
              "countryId": 8,
              "countryName": "Germany - المانيا",
              "name": "Berlin - برلين",
              "id": 138
            },
            {
              "countryId": 9,
              "countryName": "France - فرنسا",
              "name": "ليون - Lyon",
              "id": 139
            },
            {
              "countryId": 9,
              "countryName": "France - فرنسا",
              "name": "باريس - Paris",
              "id": 140
            },
            {
              "countryId": 10,
              "countryName": "Egypt - مصر",
              "name": "الاسكندريه",
              "id": 141
            },
            {
              "countryId": 10,
              "countryName": "Egypt - مصر",
              "name": "القاهره",
              "id": 142
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "كركوك",
              "id": 143
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "بابل",
              "id": 144
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "السليمانيه",
              "id": 145
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "دهوك",
              "id": 146
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "البصره",
              "id": 147
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "كربلاء",
              "id": 148
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "النجف",
              "id": 149
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "أربيل",
              "id": 150
            },
            {
              "countryId": 11,
              "countryName": "Iraqi - عراق",
              "name": "بغداد",
              "id": 151
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الجهراء",
              "id": 152
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الفروانيه",
              "id": 153
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الاحمدي",
              "id": 154
            },
            {
              "countryId": 12,
              "countryName": "Kuwait - كويت",
              "name": "الكويت",
              "id": 155
            },
            {
              "countryId": 13,
              "countryName": "Qatar - قطر",
              "name": "الدوحه",
              "id": 156
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "الرزقاء",
              "id": 157
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "الكرك",
              "id": 158
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "العقبه",
              "id": 159
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "اربد",
              "id": 160
            },
            {
              "countryId": 14,
              "countryName": "Jordan - الأردن ",
              "name": "عمان ",
              "id": 161
            },
            {
              "countryId": 15,
              "countryName": "Bahrain - بحرين",
              "name": "المنامه",
              "id": 162
            },
            {
              "countryId": 16,
              "countryName": "Sudan - سودان",
              "name": "الخرطوم",
              "id": 163
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "صور",
              "id": 164
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "شتورا",
              "id": 165
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "صيدا",
              "id": 166
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "عكار",
              "id": 167
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "طرابلس",
              "id": 168
            },
            {
              "countryId": 17,
              "countryName": "Lebanon - لبنان",
              "name": "بيروت",
              "id": 169
            },
            {
              "countryId": 18,
              "countryName": "Yemen - يمن",
              "name": "صنعاء",
              "id": 170
            },
            {
              "countryId": 19,
              "countryName": "Somalia - صومال",
              "name": "مقديشو",
              "id": 171
            },
            {
              "countryId": 20,
              "countryName": "Mauritania - موريتانيا",
              "name": "نواكشوط",
              "id": 172
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " سوديرمانلاند - Södermanland",
              "id": 173
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " أوبسالا - Uppsala",
              "id": 174
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " نوربوتن - Norrbotten",
              "id": 175
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": " فاستربوتن - Västerbotten",
              "id": 176
            },
            {
              "countryId": 21,
              "countryName": "Sweden - سويد",
              "name": "ستوكهولم - Stockholm",
              "id": 177
            },
            {
              "countryId": 22,
              "countryName": "Norway - نروج",
              "name": "أوسلو - Oslo",
              "id": 178
            },
            {
              "countryId": 23,
              "countryName": "Denmark - دنمارك",
              "name": "كوبنهاغن - København",
              "id": 179
            },
            {
              "countryId": 24,
              "countryName": "Russia - روسيا",
              "name": "موسكو - Москва",
              "id": 180
            },
            {
              "countryId": 25,
              "countryName": "Oman - سلطنة عمان",
              "name": "مسقط",
              "id": 181
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "مراكش",
              "id": 182
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "الرباط",
              "id": 183
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "فاس",
              "id": 184
            },
            {
              "countryId": 26,
              "countryName": "Morocco - مغرب",
              "name": "الدار البيضاء",
              "id": 185
            },
            {
              "countryId": 27,
              "countryName": "Brazil - البرازيل",
              "name": "سلفادور - Salvador",
              "id": 186
            },
            {
              "countryId": 27,
              "countryName": "Brazil - البرازيل",
              "name": "ريو دي جانيرو - Rio de Janeiro",
              "id": 187
            },
            {
              "countryId": 27,
              "countryName": "Brazil - البرازيل",
              "name": "ساو باولو - Sao Paulo",
              "id": 188
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "بنغازي",
              "id": 189
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "سرت",
              "id": 190
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "مصراته",
              "id": 191
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "صبراته",
              "id": 192
            },
            {
              "countryId": 28,
              "countryName": "Libya - ليبيا",
              "name": "طرابلس الغرب",
              "id": 193
            },
            {
              "countryId": 29,
              "countryName": "Iran - ايران",
              "name": "طهران - Tehran",
              "id": 194
            },
            {
              "countryId": 30,
              "countryName": "Canada - كندا",
              "name": "مونتريال - Montreal",
              "id": 195
            },
            {
              "countryId": 30,
              "countryName": "Canada - كندا",
              "name": "تورنتو - Toronto",
              "id": 196
            },
            {
              "countryId": 30,
              "countryName": "Canada - كندا",
              "name": "اونتاريو - Ontario",
              "id": 197
            },
            {
              "countryId": 31,
              "countryName": "Malaysia - ماليزيا",
              "name": "كوالالمبور - Kuala Lumpur",
              "id": 198
            },
            {
              "countryId": 32,
              "countryName": "Algeria - جزائر",
              "name": "عنابه",
              "id": 199
            },
            {
              "countryId": 32,
              "countryName": "Algeria - جزائر",
              "name": "وهران",
              "id": 200
            }
          ],
          "targetUrl": null,
          "success": true,
          "error": null,
          "unAuthorizedRequest": false,
          "__abp": true
        };
      }
      if (linkGetAllCountry == url) {
        return {
          "result": [
            {
              "name": "Syria",
              "cities": [
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "Damascuse",
                  "id": 1
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "تكيرطاغ (Tekirdağ)",
                  "id": 2
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سيواس (Sivas)",
                  "id": 3
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سينوب (Sinop)",
                  "id": 4
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سيرت (Siirt)",
                  "id": 5
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "سامسون (Samsun)",
                  "id": 6
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "صقاريا (Sakarya)",
                  "id": 7
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ريزا (Rize)",
                  "id": 8
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "توكات (Tokat)",
                  "id": 9
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أردو (Ordu)",
                  "id": 10
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "نوشهر (Nevşehir)",
                  "id": 11
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "موس (Muş)",
                  "id": 12
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "موغلا (Muğla)",
                  "id": 13
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ماردين (Mardin)",
                  "id": 14
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كارامان (Kahramanmaraş)",
                  "id": 15
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "مانيسا (Manisa)",
                  "id": 16
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ملاطية (Malatya)",
                  "id": 17
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "نيدا (Niğde)",
                  "id": 18
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كوتاهيا (Kütahya)",
                  "id": 19
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "طرابزون (Trabzon)",
                  "id": 20
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "شانلي أورفا (Şanlıurfa)",
                  "id": 21
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كيليس (Kilis)",
                  "id": 22
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قرة بوك (Karabük)",
                  "id": 23
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "يالوفا (Yalova)",
                  "id": 24
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "إغدير (Iğdır)",
                  "id": 25
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرض خان (Ardahan)",
                  "id": 26
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بارتين (Bartın)",
                  "id": 27
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "شرناق (Şırnak)",
                  "id": 28
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "تونجلي (Tunceli)",
                  "id": 29
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "باتمان (Batman)",
                  "id": 30
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قرة مان (Karaman)",
                  "id": 31
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بايبورت (Bayburt)",
                  "id": 32
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أق سراي (Aksaray)",
                  "id": 33
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "زونغولداك (Zonguldak)",
                  "id": 34
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "يوزكات (Yozgat)",
                  "id": 35
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "وان (Van)",
                  "id": 36
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أوشاك (Uşak)",
                  "id": 37
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كيرِك قلعة (Kırıkkale)",
                  "id": 38
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قونية (Konya)",
                  "id": 39
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قوجه ايلي (Kocaeli))",
                  "id": 40
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قرشهر (Kırşehir)",
                  "id": 41
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بورصة (Bursa)",
                  "id": 42
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بوردور (Burdur)",
                  "id": 43
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بولو (Bolu)",
                  "id": 44
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بيطليس - Bitlis ",
                  "id": 45
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بينكُل - Bingöl ",
                  "id": 46
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بيله جك (Bilecik) ",
                  "id": 47
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "بالق أسير (Balıkesir)",
                  "id": 48
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "جاناكالي (Çanakkale) ",
                  "id": 49
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أيطن (Aydın)",
                  "id": 50
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أنطاليا (Antalya)",
                  "id": 51
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أماسيا (Amasya)",
                  "id": 52
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أفيون (Afyon)",
                  "id": 53
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أديامان (Adıyaman)",
                  "id": 54
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أضنة - ADANA",
                  "id": 55
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ازمير - İZMİR",
                  "id": 56
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أنقرة - ANKARA",
                  "id": 57
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرتوين (Artvin)",
                  "id": 58
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "جانقري (Çankırı) ",
                  "id": 59
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "جوروم (Çorum) ",
                  "id": 60
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "دنيزلي (Denizli) ",
                  "id": 61
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كيركلاريلي (Kırklareli)",
                  "id": 62
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قيصرية (Kayseri)",
                  "id": 63
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "قسطموني (Kastamonu) ",
                  "id": 64
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كارس (Kars)",
                  "id": 65
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "مرسين (Mersin) ",
                  "id": 66
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "إسبرطة (Isparta) ",
                  "id": 67
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "خطاي (Hattay)) ",
                  "id": 68
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "حقاري (Hakkari) ",
                  "id": 69
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "كوموش خانة (Gümüşhane) ",
                  "id": 70
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "غيرسون (Giresun) ",
                  "id": 71
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "غازي عينتاب (Gaziantep)",
                  "id": 72
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أسكي شهر (Eskişehir) ",
                  "id": 73
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرضروم (Erzurum)",
                  "id": 74
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أرزينجان (Erzincan) ",
                  "id": 75
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "إلازِغ (Elazığ) ",
                  "id": 76
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "أدرنة (Edirne)",
                  "id": 77
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "ديار بكر (Diyarbakır) ",
                  "id": 78
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "عثمانية (Osmaniye)",
                  "id": 79
                },
                {
                  "countryId": 1,
                  "countryName": "Syria",
                  "name": "دوزجه (Düzce",
                  "id": 80
                }
              ],
              "id": 1
            },
            {
              "name": "Saudi - السعودية",
              "cities": [
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "سكاكا",
                  "id": 81
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الباحه",
                  "id": 82
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "نجران",
                  "id": 83
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "عرعر",
                  "id": 84
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "حائل",
                  "id": 85
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "تبوك",
                  "id": 86
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "ابها",
                  "id": 87
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الدمام",
                  "id": 88
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "القصيم",
                  "id": 89
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الاحساء",
                  "id": 90
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "جده",
                  "id": 91
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "المدينه المنوره",
                  "id": 92
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "مكه المكرمه ",
                  "id": 93
                },
                {
                  "countryId": 2,
                  "countryName": "Saudi - السعودية",
                  "name": "الرياض",
                  "id": 94
                }
              ],
              "id": 2
            },
            {
              "name": "Emirates - امارات",
              "cities": [
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "الفجيره",
                  "id": 95
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "راس الخيمه",
                  "id": 96
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "ام القيوين",
                  "id": 97
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "عجمان",
                  "id": 98
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "الشارقه",
                  "id": 99
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "دبي",
                  "id": 100
                },
                {
                  "countryId": 3,
                  "countryName": "Emirates - امارات",
                  "name": "أبو ظبي",
                  "id": 101
                }
              ],
              "id": 3
            },
            {
              "name": "Syria - سورية",
              "cities": [
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "ادلب",
                  "id": 102
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "قنيطره",
                  "id": 103
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "ريف دمشق",
                  "id": 104
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "رقه",
                  "id": 105
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "الحسكه",
                  "id": 106
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "دير الزور",
                  "id": 107
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "سويداء",
                  "id": 108
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "درعا",
                  "id": 109
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "طرطوس",
                  "id": 110
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "اللاذقيه",
                  "id": 111
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "حمص",
                  "id": 112
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "حماه",
                  "id": 113
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "حلب",
                  "id": 114
                },
                {
                  "countryId": 4,
                  "countryName": "Syria - سورية",
                  "name": "دمشق",
                  "id": 115
                }
              ],
              "id": 4
            },
            {
              "name": "China - صين",
              "cities": [
                {
                  "countryId": 5,
                  "countryName": "China - صين",
                  "name": "بكين - Běijīng",
                  "id": 116
                }
              ],
              "id": 5
            },
            {
              "name": "Britain - بريطانيا",
              "cities": [
                {
                  "countryId": 6,
                  "countryName": "Britain - بريطانيا",
                  "name": "لندن - London",
                  "id": 117
                }
              ],
              "id": 6
            },
            {
              "name": "UAS - أمريكا",
              "cities": [
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "كاليفورنيا - California",
                  "id": 118
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "ميشيغان - Michigan",
                  "id": 119
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "نيوجرسي - New Jersey",
                  "id": 120
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "نيويورك - New York",
                  "id": 121
                },
                {
                  "countryId": 7,
                  "countryName": "UAS - أمريكا",
                  "name": "واشنطن - Washington",
                  "id": 122
                }
              ],
              "id": 7
            },
            {
              "name": "Germany - المانيا",
              "cities": [
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "بون - Bonn",
                  "id": 123
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "بوخوم - Bochum",
                  "id": 124
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "درسدن - Dresden",
                  "id": 125
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "نورنبرغ - Nürnberg ",
                  "id": 126
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "دويسبورغ - Duisburg",
                  "id": 127
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "لايبزنغ - Leipzig",
                  "id": 128
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "هانوفر - Hannover",
                  "id": 129
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "بريمن - Bremen",
                  "id": 130
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "دوسيلدورف - Düsseldorf",
                  "id": 131
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "ايسين - Essen",
                  "id": 132
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "دورتموند - Dortmund",
                  "id": 133
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "شتوتغارت - Stuttgart",
                  "id": 134
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "كولون - Koeln",
                  "id": 135
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "ميونخ - Munich",
                  "id": 136
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "Hamburg - هامبورغ",
                  "id": 137
                },
                {
                  "countryId": 8,
                  "countryName": "Germany - المانيا",
                  "name": "Berlin - برلين",
                  "id": 138
                }
              ],
              "id": 8
            },
            {
              "name": "France - فرنسا",
              "cities": [
                {
                  "countryId": 9,
                  "countryName": "France - فرنسا",
                  "name": "ليون - Lyon",
                  "id": 139
                },
                {
                  "countryId": 9,
                  "countryName": "France - فرنسا",
                  "name": "باريس - Paris",
                  "id": 140
                }
              ],
              "id": 9
            },
            {
              "name": "Egypt - مصر",
              "cities": [
                {
                  "countryId": 10,
                  "countryName": "Egypt - مصر",
                  "name": "الاسكندريه",
                  "id": 141
                },
                {
                  "countryId": 10,
                  "countryName": "Egypt - مصر",
                  "name": "القاهره",
                  "id": 142
                }
              ],
              "id": 10
            },
            {
              "name": "Iraqi - عراق",
              "cities": [
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "كركوك",
                  "id": 143
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "بابل",
                  "id": 144
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "السليمانيه",
                  "id": 145
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "دهوك",
                  "id": 146
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "البصره",
                  "id": 147
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "كربلاء",
                  "id": 148
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "النجف",
                  "id": 149
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "أربيل",
                  "id": 150
                },
                {
                  "countryId": 11,
                  "countryName": "Iraqi - عراق",
                  "name": "بغداد",
                  "id": 151
                }
              ],
              "id": 11
            },
            {
              "name": "Kuwait - كويت",
              "cities": [
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الجهراء",
                  "id": 152
                },
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الفروانيه",
                  "id": 153
                },
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الاحمدي",
                  "id": 154
                },
                {
                  "countryId": 12,
                  "countryName": "Kuwait - كويت",
                  "name": "الكويت",
                  "id": 155
                }
              ],
              "id": 12
            },
            {
              "name": "Qatar - قطر",
              "cities": [
                {
                  "countryId": 13,
                  "countryName": "Qatar - قطر",
                  "name": "الدوحه",
                  "id": 156
                }
              ],
              "id": 13
            },
            {
              "name": "Jordan - الأردن ",
              "cities": [
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "الرزقاء",
                  "id": 157
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "الكرك",
                  "id": 158
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "العقبه",
                  "id": 159
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "اربد",
                  "id": 160
                },
                {
                  "countryId": 14,
                  "countryName": "Jordan - الأردن ",
                  "name": "عمان ",
                  "id": 161
                }
              ],
              "id": 14
            },
            {
              "name": "Bahrain - بحرين",
              "cities": [
                {
                  "countryId": 15,
                  "countryName": "Bahrain - بحرين",
                  "name": "المنامه",
                  "id": 162
                }
              ],
              "id": 15
            },
            {
              "name": "Sudan - سودان",
              "cities": [
                {
                  "countryId": 16,
                  "countryName": "Sudan - سودان",
                  "name": "الخرطوم",
                  "id": 163
                }
              ],
              "id": 16
            },
            {
              "name": "Lebanon - لبنان",
              "cities": [
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "صور",
                  "id": 164
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "شتورا",
                  "id": 165
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "صيدا",
                  "id": 166
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "عكار",
                  "id": 167
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "طرابلس",
                  "id": 168
                },
                {
                  "countryId": 17,
                  "countryName": "Lebanon - لبنان",
                  "name": "بيروت",
                  "id": 169
                }
              ],
              "id": 17
            },
            {
              "name": "Yemen - يمن",
              "cities": [
                {
                  "countryId": 18,
                  "countryName": "Yemen - يمن",
                  "name": "صنعاء",
                  "id": 170
                }
              ],
              "id": 18
            },
            {
              "name": "Somalia - صومال",
              "cities": [
                {
                  "countryId": 19,
                  "countryName": "Somalia - صومال",
                  "name": "مقديشو",
                  "id": 171
                }
              ],
              "id": 19
            },
            {
              "name": "Mauritania - موريتانيا",
              "cities": [
                {
                  "countryId": 20,
                  "countryName": "Mauritania - موريتانيا",
                  "name": "نواكشوط",
                  "id": 172
                }
              ],
              "id": 20
            },
            {
              "name": "Sweden - سويد",
              "cities": [
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " سوديرمانلاند - Södermanland",
                  "id": 173
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " أوبسالا - Uppsala",
                  "id": 174
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " نوربوتن - Norrbotten",
                  "id": 175
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": " فاستربوتن - Västerbotten",
                  "id": 176
                },
                {
                  "countryId": 21,
                  "countryName": "Sweden - سويد",
                  "name": "ستوكهولم - Stockholm",
                  "id": 177
                }
              ],
              "id": 21
            },
            {
              "name": "Norway - نروج",
              "cities": [
                {
                  "countryId": 22,
                  "countryName": "Norway - نروج",
                  "name": "أوسلو - Oslo",
                  "id": 178
                }
              ],
              "id": 22
            },
            {
              "name": "Denmark - دنمارك",
              "cities": [
                {
                  "countryId": 23,
                  "countryName": "Denmark - دنمارك",
                  "name": "كوبنهاغن - København",
                  "id": 179
                }
              ],
              "id": 23
            },
            {
              "name": "Russia - روسيا",
              "cities": [
                {
                  "countryId": 24,
                  "countryName": "Russia - روسيا",
                  "name": "موسكو - Москва",
                  "id": 180
                }
              ],
              "id": 24
            },
            {
              "name": "Oman - سلطنة عمان",
              "cities": [
                {
                  "countryId": 25,
                  "countryName": "Oman - سلطنة عمان",
                  "name": "مسقط",
                  "id": 181
                }
              ],
              "id": 25
            },
            {
              "name": "Morocco - مغرب",
              "cities": [
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "مراكش",
                  "id": 182
                },
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "الرباط",
                  "id": 183
                },
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "فاس",
                  "id": 184
                },
                {
                  "countryId": 26,
                  "countryName": "Morocco - مغرب",
                  "name": "الدار البيضاء",
                  "id": 185
                }
              ],
              "id": 26
            },
            {
              "name": "Brazil - البرازيل",
              "cities": [
                {
                  "countryId": 27,
                  "countryName": "Brazil - البرازيل",
                  "name": "سلفادور - Salvador",
                  "id": 186
                },
                {
                  "countryId": 27,
                  "countryName": "Brazil - البرازيل",
                  "name": "ريو دي جانيرو - Rio de Janeiro",
                  "id": 187
                },
                {
                  "countryId": 27,
                  "countryName": "Brazil - البرازيل",
                  "name": "ساو باولو - Sao Paulo",
                  "id": 188
                }
              ],
              "id": 27
            },
            {
              "name": "Libya - ليبيا",
              "cities": [
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "بنغازي",
                  "id": 189
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "سرت",
                  "id": 190
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "مصراته",
                  "id": 191
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "صبراته",
                  "id": 192
                },
                {
                  "countryId": 28,
                  "countryName": "Libya - ليبيا",
                  "name": "طرابلس الغرب",
                  "id": 193
                }
              ],
              "id": 28
            },
            {
              "name": "Iran - ايران",
              "cities": [
                {
                  "countryId": 29,
                  "countryName": "Iran - ايران",
                  "name": "طهران - Tehran",
                  "id": 194
                }
              ],
              "id": 29
            },
            {
              "name": "Canada - كندا",
              "cities": [
                {
                  "countryId": 30,
                  "countryName": "Canada - كندا",
                  "name": "مونتريال - Montreal",
                  "id": 195
                },
                {
                  "countryId": 30,
                  "countryName": "Canada - كندا",
                  "name": "تورنتو - Toronto",
                  "id": 196
                },
                {
                  "countryId": 30,
                  "countryName": "Canada - كندا",
                  "name": "اونتاريو - Ontario",
                  "id": 197
                }
              ],
              "id": 30
            },
            {
              "name": "Malaysia - ماليزيا",
              "cities": [
                {
                  "countryId": 31,
                  "countryName": "Malaysia - ماليزيا",
                  "name": "كوالالمبور - Kuala Lumpur",
                  "id": 198
                }
              ],
              "id": 31
            },
            {
              "name": "Algeria - جزائر",
              "cities": [
                {
                  "countryId": 32,
                  "countryName": "Algeria - جزائر",
                  "name": "عنابه",
                  "id": 199
                },
                {
                  "countryId": 32,
                  "countryName": "Algeria - جزائر",
                  "name": "وهران",
                  "id": 200
                }
              ],
              "id": 32
            },
            {
              "name": "Indonesia - اندونيسيا",
              "cities": [],
              "id": 33
            },
            {
              "name": "South Korea - كوريا الجنوبيه ",
              "cities": [],
              "id": 34
            },
            {
              "name": "India - الهند",
              "cities": [],
              "id": 35
            },
            {
              "name": "Australian - استراليا",
              "cities": [],
              "id": 36
            },
            {
              "name": "Singapore - سنغافورا",
              "cities": [],
              "id": 37
            },
            {
              "name": "Switzerland - سويسرا",
              "cities": [],
              "id": 38
            },
            {
              "name": "Japan - يابان",
              "cities": [],
              "id": 39
            },
            {
              "name": "New Zealand - نيوزيلندا",
              "cities": [],
              "id": 40
            },
            {
              "name": "Hong Kong - هونغ كونغ",
              "cities": [],
              "id": 41
            },
            {
              "name": "Mexico - مكسيك",
              "cities": [],
              "id": 42
            },
            {
              "name": "South Africa - جنوب افريقيا",
              "cities": [],
              "id": 43
            },
            {
              "name": "Philippines - فلبين",
              "cities": [],
              "id": 44
            },
            {
              "name": "Pakistan - باكستان ",
              "cities": [],
              "id": 45
            },
            {
              "name": "Poland - بولندا",
              "cities": [],
              "id": 46
            },
            {
              "name": "Colombia - كولومبيا",
              "cities": [],
              "id": 47
            },
            {
              "name": "Chile - تشيلي",
              "cities": [],
              "id": 48
            },
            {
              "name": "Taiwan - تايوان",
              "cities": [],
              "id": 49
            },
            {
              "name": "Argentina - ارجنتين",
              "cities": [],
              "id": 50
            },
            {
              "name": "Czech - تشيك",
              "cities": [],
              "id": 51
            },
            {
              "name": "Vietnam - فيتنام",
              "cities": [],
              "id": 52
            },
            {
              "name": "Sri Lanka - سيريلانكا",
              "cities": [],
              "id": 53
            },
            {
              "name": "Ukraine - أوكرانيا",
              "cities": [],
              "id": 54
            },
            {
              "name": "Nigeria - نيجيريا",
              "cities": [],
              "id": 55
            },
            {
              "name": "Tunisia - تونس",
              "cities": [],
              "id": 56
            },
            {
              "name": "Uganda - اوغندا",
              "cities": [],
              "id": 57
            },
            {
              "name": "Romania - رومانيا",
              "cities": [],
              "id": 58
            },
            {
              "name": "Bangladesh - بنغلادش",
              "cities": [],
              "id": 59
            },
            {
              "name": "Georgia - جورجيا",
              "cities": [],
              "id": 60
            },
            {
              "name": "Croatia - كرواتيا",
              "cities": [],
              "id": 61
            },
            {
              "name": "Uzbekistan - اوزباكستان",
              "cities": [],
              "id": 62
            },
            {
              "name": "Bulgaria - بلغاريا",
              "cities": [],
              "id": 63
            },
            {
              "name": "Uruguay - اوروغواي",
              "cities": [],
              "id": 64
            },
            {
              "name": "Guinea - غينيا",
              "cities": [],
              "id": 65
            },
            {
              "name": "Djibouti - جيبوتي",
              "cities": [],
              "id": 66
            },
            {
              "name": "Austria - النمسا",
              "cities": [],
              "id": 67
            },
            {
              "name": "Cyprus - قبرص",
              "cities": [],
              "id": 68
            },
            {
              "name": "Greece - اليونان",
              "cities": [],
              "id": 69
            },
            {
              "name": "Albania - البانيا",
              "cities": [],
              "id": 70
            },
            {
              "name": "Armenia - أرمينيا",
              "cities": [],
              "id": 71
            },
            {
              "name": "Azerbaijan - أذربيجان",
              "cities": [],
              "id": 72
            },
            {
              "name": "Belgium - بلجيكا",
              "cities": [],
              "id": 73
            },
            {
              "name": "Hungary - هنغاريا",
              "cities": [],
              "id": 74
            },
            {
              "name": "Ireland - ايرلندا",
              "cities": [],
              "id": 75
            },
            {
              "name": "Italy - إيطاليا",
              "cities": [],
              "id": 76
            },
            {
              "name": "Lithuania - ليتوانيا",
              "cities": [],
              "id": 77
            },
            {
              "name": "Netherlands - هولندا",
              "cities": [],
              "id": 78
            }
          ],
          "targetUrl": null,
          "success": true,
          "error": null,
          "unAuthorizedRequest": false,
          "__abp": true
        };
      }
      if (linkregister == url) {
        return {[
          {
            "id": "string",
            "accountId": 0,
            "fullName": "string",
            "contactId": 0,
            "lastMessage": "string",
            "lastMessageTime": "2021-10-06T13:29:30.999Z",
            "dialogs": [
              {
                "id": 0,
                "who": 0,
                "message": "string",
                "chatid": "string",
                "time": "2021-10-06T13:29:30.999Z",
              },
              {
                "id": 0,
                "who": 0,
                "message": "string",
                "chatid": "string",
                "time": "2021-10-06T13:29:30.999Z",
              },
              {
                "id": 0,
                "who": 0,
                "message": "string",
                "chatid": "string",
                "time": "2021-10-06T13:29:30.999Z",
              },
            ]
          }
        ]};
      }
      if (linkGetAllChat == url) {
        return
          [
            {
              "id": "string",
              "accountId": 1,
              "fullName": "string",
              "contactId": 1,
              "lastMessage": "string",
              "lastMessageTime": "2021-10-06T13:29:30.999Z",
              "dialogs": [
                {
                  "id": 0,
                  "who": 0,
                  "message": "string",
                  "chatid": "string",
                  "time": "2021-10-06T13:29:30.999Z",
                }
              ]
            },
            {
              "id": "string",
              "accountId": 1,
              "fullName": "string",
              "contactId": 1,
              "lastMessage": "string",
              "lastMessageTime": "2020-12-06T13:29:30.999Z",
              "dialogs": [
                {
                  "id": 1,
                  "who": 1,
                  "message": "string",
                  "chatid": "string",
                  "time": "2021-10-06T13:29:30.999Z",
                }
              ]
            },
            {
              "id": "string",
              "accountId": 0,
              "fullName": "string",
              "contactId": 0,
              "lastMessage": "string",
              "lastMessageTime": "2021-10-06T13:29:30.999Z",
              "dialogs": [
                {
                  "id": 0,
                  "who": 0,
                  "message": "string",
                  "chatid": "string",
                  "time": "2021-10-06T13:29:30.999Z",
                }
              ]
            },
            {
              "id": "string",
              "accountId": 0,
              "fullName": "string",
              "contactId": 0,
              "lastMessage": "string",
              "lastMessageTime": "2021-10-06T13:29:30.999Z",
              "dialogs": [
                {
                  "id": 0,
                  "who": 0,
                  "message": "string",
                  "chatid": "string",
                  "time": "2021-10-06T13:29:30.999Z",
                }
              ]
            },
          ]
        ;
      }
    }
  }

}