// To parse this JSON data, do
//
//     final astroListModel = astroListModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

AstroListModel astroListModelFromJson(String str) =>
    AstroListModel.fromJson(json.decode(str));

String astroListModelToJson(AstroListModel data) => json.encode(data.toJson());

class AstroListModel {
  List<RecordList> recordList;
  int status;
  int totalCount;

  AstroListModel({
    required this.recordList,
    required this.status,
    required this.totalCount,
  });

  factory AstroListModel.fromJson(Map<String, dynamic> json) => AstroListModel(
        recordList: List<RecordList>.from(
            json["recordList"].map((x) => RecordList.fromJson(x))),
        status: json["status"],
        totalCount: json["totalCount"],
      );

  Map<String, dynamic> toJson() => {
        "recordList": List<dynamic>.from(recordList.map((x) => x.toJson())),
        "status": status,
        "totalCount": totalCount,
      };
}

class RecordList {
  int? id;
  int? userId;
  String? name;
  String? email;
  String? contactNo;
  Gender? gender;
  DateTime? birthDate;
  String? primarySkill;
  String? allSkill;
  String? languageKnown;
  String? profileImage;
  int? charge;
  int? experienceInYears;
  int? dailyContribution;
  String? hearAboutAstroguru;
  int? isWorkingOnAnotherPlatform;
  String? whyOnBoard;
  String? interviewSuitableTime;
  String? currentCity;
  MainSourceOfBusiness? mainSourceOfBusiness;
  String? highestQualification;
  String? degree;
  String? college;
  String? learnAstrology;
  String? astrologerCategoryId;
  String? instaProfileLink;
  String? facebookProfileLink;
  String? linkedInProfileLink;
  String? youtubeChannelLink;
  String? websiteProfileLink;
  int? isAnyBodyRefer;
  int? minimumEarning;
  int? maximumEarning;
  String? loginBio;
  String? noofforeignCountriesTravel;
  Currentlyworkingfulltimejob? currentlyworkingfulltimejob;
  String? goodQuality;
  String? biggestChallenge;
  String? whatwillDo;
  int? isVerified;
  int? totalOrder;
  dynamic country;
  int? isActive;
  int? isDelete;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic createdBy;
  dynamic modifiedBy;
  String? nameofplateform;
  String? monthlyEarning;
  dynamic referedPerson;
  Status? chatStatus;
  dynamic chatWaitTime;
  Status? callStatus;
  dynamic callWaitTime;
  int? videoCallRate;
  int? reportRate;
  String? astrologerCategory;
  bool? isFreeAvailable;
  double rating;

  RecordList({
    required this.id,
    required this.userId,
    required this.name,
    required this.email,
    required this.contactNo,
    required this.gender,
    required this.birthDate,
    required this.primarySkill,
    required this.allSkill,
    required this.languageKnown,
    required this.profileImage,
    required this.charge,
    required this.experienceInYears,
    required this.dailyContribution,
    required this.hearAboutAstroguru,
    required this.isWorkingOnAnotherPlatform,
    required this.whyOnBoard,
    required this.interviewSuitableTime,
    required this.currentCity,
    required this.mainSourceOfBusiness,
    required this.highestQualification,
    required this.degree,
    required this.college,
    required this.learnAstrology,
    required this.astrologerCategoryId,
    required this.instaProfileLink,
    required this.facebookProfileLink,
    required this.linkedInProfileLink,
    required this.youtubeChannelLink,
    required this.websiteProfileLink,
    required this.isAnyBodyRefer,
    required this.minimumEarning,
    required this.maximumEarning,
    required this.loginBio,
    required this.noofforeignCountriesTravel,
    required this.currentlyworkingfulltimejob,
    required this.goodQuality,
    required this.biggestChallenge,
    required this.whatwillDo,
    required this.isVerified,
    required this.totalOrder,
    required this.country,
    required this.isActive,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.nameofplateform,
    required this.monthlyEarning,
    required this.referedPerson,
    required this.chatStatus,
    required this.chatWaitTime,
    required this.callStatus,
    required this.callWaitTime,
    required this.videoCallRate,
    required this.reportRate,
    required this.astrologerCategory,
    required this.isFreeAvailable,
    required this.rating,
  });

  factory RecordList.fromJson(Map<String, dynamic> json) => RecordList(
        id: json["id"],
        userId: json["userId"],
        name: json["name"],
        email: json["email"],
        contactNo: json["contactNo"],
        gender: genderValues.map[json["gender"]],
        birthDate: DateTime.parse(json["birthDate"]),
        primarySkill: json["primarySkill"],
        allSkill: json["allSkill"],
        languageKnown: json["languageKnown"],
        profileImage: json["profileImage"],
        charge: json["charge"],
        experienceInYears: json["experienceInYears"],
        dailyContribution: json["dailyContribution"],
        hearAboutAstroguru: json["hearAboutAstroguru"],
        isWorkingOnAnotherPlatform: json["isWorkingOnAnotherPlatform"],
        whyOnBoard: json["whyOnBoard"],
        interviewSuitableTime: json["interviewSuitableTime"],
        currentCity: json["currentCity"],
        mainSourceOfBusiness:
            mainSourceOfBusinessValues.map[json["mainSourceOfBusiness"]],
        highestQualification: json["highestQualification"],
        degree: json["degree"],
        college: json["college"],
        learnAstrology: json["learnAstrology"],
        astrologerCategoryId: json["astrologerCategoryId"],
        instaProfileLink: json["instaProfileLink"],
        facebookProfileLink: json["facebookProfileLink"],
        linkedInProfileLink: json["linkedInProfileLink"],
        youtubeChannelLink: json["youtubeChannelLink"],
        websiteProfileLink: json["websiteProfileLink"],
        isAnyBodyRefer: json["isAnyBodyRefer"],
        minimumEarning: json["minimumEarning"],
        maximumEarning: json["maximumEarning"],
        loginBio: json["loginBio"],
        noofforeignCountriesTravel: json["NoofforeignCountriesTravel"],
        currentlyworkingfulltimejob: currentlyworkingfulltimejobValues
            .map[json["currentlyworkingfulltimejob"]],
        goodQuality: json["goodQuality"],
        biggestChallenge: json["biggestChallenge"],
        whatwillDo: json["whatwillDo"],
        isVerified: json["isVerified"],
        totalOrder: json["totalOrder"],
        country: json["country"],
        isActive: json["isActive"],
        isDelete: json["isDelete"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["createdBy"],
        modifiedBy: json["modifiedBy"],
        nameofplateform: json["nameofplateform"],
        monthlyEarning: json["monthlyEarning"],
        referedPerson: json["referedPerson"],
        chatStatus: statusValues.map[json["chatStatus"]],
        chatWaitTime: json["chatWaitTime"],
        callStatus: statusValues.map[json["callStatus"]],
        callWaitTime: json["callWaitTime"],
        videoCallRate: json["videoCallRate"],
        reportRate: json["reportRate"],
        astrologerCategory: json["astrologerCategory"],
        isFreeAvailable: json["isFreeAvailable"],
        rating: json["rating"] != null ? json["rating"].toDouble() : 0.0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "name": name,
        "email": email,
        "contactNo": contactNo,
        "gender": genderValues.reverse[gender],
        "birthDate": birthDate?.toIso8601String(),
        "primarySkill": primarySkill,
        "allSkill": allSkill,
        "languageKnown": languageKnown,
        "profileImage": profileImage,
        "charge": charge,
        "experienceInYears": experienceInYears,
        "dailyContribution": dailyContribution,
        "hearAboutAstroguru": hearAboutAstroguru,
        "isWorkingOnAnotherPlatform": isWorkingOnAnotherPlatform,
        "whyOnBoard": whyOnBoard,
        "interviewSuitableTime": interviewSuitableTime,
        "currentCity": currentCity,
        "mainSourceOfBusiness":
            mainSourceOfBusinessValues.reverse[mainSourceOfBusiness],
        "highestQualification": highestQualification,
        "degree": degree,
        "college": college,
        "learnAstrology": learnAstrology,
        "astrologerCategoryId": astrologerCategoryId,
        "instaProfileLink": instaProfileLink,
        "facebookProfileLink": facebookProfileLink,
        "linkedInProfileLink": linkedInProfileLink,
        "youtubeChannelLink": youtubeChannelLink,
        "websiteProfileLink": websiteProfileLink,
        "isAnyBodyRefer": isAnyBodyRefer,
        "minimumEarning": minimumEarning,
        "maximumEarning": maximumEarning,
        "loginBio": loginBio,
        "NoofforeignCountriesTravel": noofforeignCountriesTravel,
        "currentlyworkingfulltimejob": currentlyworkingfulltimejobValues
            .reverse[currentlyworkingfulltimejob],
        "goodQuality": goodQuality,
        "biggestChallenge": biggestChallenge,
        "whatwillDo": whatwillDo,
        "isVerified": isVerified,
        "totalOrder": totalOrder,
        "country": country,
        "isActive": isActive,
        "isDelete": isDelete,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "createdBy": createdBy,
        "modifiedBy": modifiedBy,
        "nameofplateform": nameofplateform,
        "monthlyEarning": monthlyEarning,
        "referedPerson": referedPerson,
        "chatStatus": statusValues.reverse[chatStatus],
        "chatWaitTime": chatWaitTime,
        "callStatus": statusValues.reverse[callStatus],
        "callWaitTime": callWaitTime,
        "videoCallRate": videoCallRate,
        "reportRate": reportRate,
        "astrologerCategory": astrologerCategory,
        "isFreeAvailable": isFreeAvailable,
        "rating": rating,
      };
}

enum Status { ONLINE }

final statusValues = EnumValues({"Online": Status.ONLINE});

enum Currentlyworkingfulltimejob {
  I_OWN_A_BUSINESS,
  NO_I_AM_NOT_WORKING_ANYWHERE_ELSE,
  NO_I_AM_WORKING_AS_PART_TIMER_OR_FREELANCER,
  YES_I_AM_WORKING_SOMEWHERE_AS_A_FULL_TIMER
}

final currentlyworkingfulltimejobValues = EnumValues({
  "I own a business": Currentlyworkingfulltimejob.I_OWN_A_BUSINESS,
  "no,I am not working anywhere else":
      Currentlyworkingfulltimejob.NO_I_AM_NOT_WORKING_ANYWHERE_ELSE,
  "No, I am working as part - timer or freelancer":
      Currentlyworkingfulltimejob.NO_I_AM_WORKING_AS_PART_TIMER_OR_FREELANCER,
  "Yes, I am working somewhere as a full-timer.":
      Currentlyworkingfulltimejob.YES_I_AM_WORKING_SOMEWHERE_AS_A_FULL_TIMER
});

enum Gender { FEMALE, MALE }

final genderValues = EnumValues({"Female": Gender.FEMALE, "Male": Gender.MALE});

enum MainSourceOfBusiness {
  GOVERMENT_JOB,
  NONE_OF_THE_ABOVE,
  OWN_BUSINESS,
  PRIVATE_JOB
}

final mainSourceOfBusinessValues = EnumValues({
  "Goverment Job": MainSourceOfBusiness.GOVERMENT_JOB,
  "None of the above": MainSourceOfBusiness.NONE_OF_THE_ABOVE,
  "Own Business": MainSourceOfBusiness.OWN_BUSINESS,
  "Private Job": MainSourceOfBusiness.PRIVATE_JOB
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
