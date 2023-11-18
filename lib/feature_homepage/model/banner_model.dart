// To parse this JSON data, do
//
//     final bannerModel = bannerModelFromJson(jsonString);

import 'dart:convert';

BannerModel bannerModelFromJson(String str) =>
    BannerModel.fromJson(json.decode(str));

String bannerModelToJson(BannerModel data) => json.encode(data.toJson());

class BannerModel {
  List<Banner> banner;
  List<Blog> blog;
  List<ProductCategory> productCategory;
  List<AstrotalkInNew> astrotalkInNews;
  List<AstrologyVideo> astrologyVideo;
  int status;

  BannerModel({
    required this.banner,
    required this.blog,
    required this.productCategory,
    required this.astrotalkInNews,
    required this.astrologyVideo,
    required this.status,
  });

  BannerModel copyWith({
    List<Banner>? banner,
    List<Blog>? blog,
    List<ProductCategory>? productCategory,
    List<AstrotalkInNew>? astrotalkInNews,
    List<AstrologyVideo>? astrologyVideo,
    int? status,
  }) =>
      BannerModel(
        banner: banner ?? this.banner,
        blog: blog ?? this.blog,
        productCategory: productCategory ?? this.productCategory,
        astrotalkInNews: astrotalkInNews ?? this.astrotalkInNews,
        astrologyVideo: astrologyVideo ?? this.astrologyVideo,
        status: status ?? this.status,
      );

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        banner:
            List<Banner>.from(json["banner"].map((x) => Banner.fromJson(x))),
        blog: List<Blog>.from(json["blog"].map((x) => Blog.fromJson(x))),
        productCategory: List<ProductCategory>.from(
            json["productCategory"].map((x) => ProductCategory.fromJson(x))),
        astrotalkInNews: List<AstrotalkInNew>.from(
            json["astrotalkInNews"].map((x) => AstrotalkInNew.fromJson(x))),
        astrologyVideo: List<AstrologyVideo>.from(
            json["astrologyVideo"].map((x) => AstrologyVideo.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "banner": List<dynamic>.from(banner.map((x) => x.toJson())),
        "blog": List<dynamic>.from(blog.map((x) => x.toJson())),
        "productCategory":
            List<dynamic>.from(productCategory.map((x) => x.toJson())),
        "astrotalkInNews":
            List<dynamic>.from(astrotalkInNews.map((x) => x.toJson())),
        "astrologyVideo":
            List<dynamic>.from(astrologyVideo.map((x) => x.toJson())),
        "status": status,
      };
}

class AstrologyVideo {
  int id;
  String youtubeLink;
  String coverImage;
  String videoTitle;
  int isActive;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  int createdBy;
  int modifiedBy;

  AstrologyVideo({
    required this.id,
    required this.youtubeLink,
    required this.coverImage,
    required this.videoTitle,
    required this.isActive,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.modifiedBy,
  });

  AstrologyVideo copyWith({
    int? id,
    String? youtubeLink,
    String? coverImage,
    String? videoTitle,
    int? isActive,
    int? isDelete,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? modifiedBy,
  }) =>
      AstrologyVideo(
        id: id ?? this.id,
        youtubeLink: youtubeLink ?? this.youtubeLink,
        coverImage: coverImage ?? this.coverImage,
        videoTitle: videoTitle ?? this.videoTitle,
        isActive: isActive ?? this.isActive,
        isDelete: isDelete ?? this.isDelete,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        modifiedBy: modifiedBy ?? this.modifiedBy,
      );

  factory AstrologyVideo.fromJson(Map<String, dynamic> json) => AstrologyVideo(
        id: json["id"],
        youtubeLink: json["youtubeLink"],
        coverImage: json["coverImage"],
        videoTitle: json["videoTitle"],
        isActive: json["isActive"],
        isDelete: json["isDelete"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["createdBy"],
        modifiedBy: json["modifiedBy"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "youtubeLink": youtubeLink,
        "coverImage": coverImage,
        "videoTitle": videoTitle,
        "isActive": isActive,
        "isDelete": isDelete,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "createdBy": createdBy,
        "modifiedBy": modifiedBy,
      };
}

class AstrotalkInNew {
  int id;
  DateTime newsDate;
  String channel;
  String link;
  String bannerImage;
  String description;
  int isActive;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  int createdBy;
  int modifiedBy;

  AstrotalkInNew({
    required this.id,
    required this.newsDate,
    required this.channel,
    required this.link,
    required this.bannerImage,
    required this.description,
    required this.isActive,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.modifiedBy,
  });

  AstrotalkInNew copyWith({
    int? id,
    DateTime? newsDate,
    String? channel,
    String? link,
    String? bannerImage,
    String? description,
    int? isActive,
    int? isDelete,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? modifiedBy,
  }) =>
      AstrotalkInNew(
        id: id ?? this.id,
        newsDate: newsDate ?? this.newsDate,
        channel: channel ?? this.channel,
        link: link ?? this.link,
        bannerImage: bannerImage ?? this.bannerImage,
        description: description ?? this.description,
        isActive: isActive ?? this.isActive,
        isDelete: isDelete ?? this.isDelete,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        modifiedBy: modifiedBy ?? this.modifiedBy,
      );

  factory AstrotalkInNew.fromJson(Map<String, dynamic> json) => AstrotalkInNew(
        id: json["id"],
        newsDate: DateTime.parse(json["newsDate"]),
        channel: json["channel"],
        link: json["link"],
        bannerImage: json["bannerImage"],
        description: json["description"],
        isActive: json["isActive"],
        isDelete: json["isDelete"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["createdBy"],
        modifiedBy: json["modifiedBy"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "newsDate": newsDate.toIso8601String(),
        "channel": channel,
        "link": link,
        "bannerImage": bannerImage,
        "description": description,
        "isActive": isActive,
        "isDelete": isDelete,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "createdBy": createdBy,
        "modifiedBy": modifiedBy,
      };
}

class Banner {
  int id;
  String bannerImage;
  DateTime fromDate;
  DateTime toDate;
  int bannerTypeId;
  int isActive;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  int createdBy;
  int modifiedBy;
  String bannerType;

  Banner({
    required this.id,
    required this.bannerImage,
    required this.fromDate,
    required this.toDate,
    required this.bannerTypeId,
    required this.isActive,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.bannerType,
  });

  Banner copyWith({
    int? id,
    String? bannerImage,
    DateTime? fromDate,
    DateTime? toDate,
    int? bannerTypeId,
    int? isActive,
    int? isDelete,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? modifiedBy,
    String? bannerType,
  }) =>
      Banner(
        id: id ?? this.id,
        bannerImage: bannerImage ?? this.bannerImage,
        fromDate: fromDate ?? this.fromDate,
        toDate: toDate ?? this.toDate,
        bannerTypeId: bannerTypeId ?? this.bannerTypeId,
        isActive: isActive ?? this.isActive,
        isDelete: isDelete ?? this.isDelete,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        modifiedBy: modifiedBy ?? this.modifiedBy,
        bannerType: bannerType ?? this.bannerType,
      );

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["id"],
        bannerImage: json["bannerImage"],
        fromDate: DateTime.parse(json["fromDate"]),
        toDate: DateTime.parse(json["toDate"]),
        bannerTypeId: json["bannerTypeId"],
        isActive: json["isActive"],
        isDelete: json["isDelete"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["createdBy"],
        modifiedBy: json["modifiedBy"],
        bannerType: json["bannerType"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bannerImage": bannerImage,
        "fromDate": fromDate.toIso8601String(),
        "toDate": toDate.toIso8601String(),
        "bannerTypeId": bannerTypeId,
        "isActive": isActive,
        "isDelete": isDelete,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "createdBy": createdBy,
        "modifiedBy": modifiedBy,
        "bannerType": bannerType,
      };
}

class Blog {
  int id;
  String title;
  String blogImage;
  dynamic blogCategoryId;
  String description;
  int viewer;
  String author;
  DateTime postedOn;
  int isActive;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  int createdBy;
  int modifiedBy;
  String extension;
  String previewImage;

  Blog({
    required this.id,
    required this.title,
    required this.blogImage,
    required this.blogCategoryId,
    required this.description,
    required this.viewer,
    required this.author,
    required this.postedOn,
    required this.isActive,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.extension,
    required this.previewImage,
  });

  Blog copyWith({
    int? id,
    String? title,
    String? blogImage,
    dynamic blogCategoryId,
    String? description,
    int? viewer,
    String? author,
    DateTime? postedOn,
    int? isActive,
    int? isDelete,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? modifiedBy,
    String? extension,
    String? previewImage,
  }) =>
      Blog(
        id: id ?? this.id,
        title: title ?? this.title,
        blogImage: blogImage ?? this.blogImage,
        blogCategoryId: blogCategoryId ?? this.blogCategoryId,
        description: description ?? this.description,
        viewer: viewer ?? this.viewer,
        author: author ?? this.author,
        postedOn: postedOn ?? this.postedOn,
        isActive: isActive ?? this.isActive,
        isDelete: isDelete ?? this.isDelete,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        modifiedBy: modifiedBy ?? this.modifiedBy,
        extension: extension ?? this.extension,
        previewImage: previewImage ?? this.previewImage,
      );

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json["id"],
        title: json["title"],
        blogImage: json["blogImage"],
        blogCategoryId: json["blogCategoryId"],
        description: json["description"],
        viewer: json["viewer"],
        author: json["author"],
        postedOn: DateTime.parse(json["postedOn"]),
        isActive: json["isActive"],
        isDelete: json["isDelete"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["createdBy"],
        modifiedBy: json["modifiedBy"],
        extension: json["extension"],
        previewImage: json["previewImage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "blogImage": blogImage,
        "blogCategoryId": blogCategoryId,
        "description": description,
        "viewer": viewer,
        "author": author,
        "postedOn": postedOn.toIso8601String(),
        "isActive": isActive,
        "isDelete": isDelete,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "createdBy": createdBy,
        "modifiedBy": modifiedBy,
        "extension": extension,
        "previewImage": previewImage,
      };
}

class ProductCategory {
  int id;
  String name;
  dynamic displayOrder;
  String categoryImage;
  int isActive;
  int isDelete;
  DateTime createdAt;
  DateTime updatedAt;
  int createdBy;
  int modifiedBy;

  ProductCategory({
    required this.id,
    required this.name,
    required this.displayOrder,
    required this.categoryImage,
    required this.isActive,
    required this.isDelete,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.modifiedBy,
  });

  ProductCategory copyWith({
    int? id,
    String? name,
    dynamic displayOrder,
    String? categoryImage,
    int? isActive,
    int? isDelete,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? modifiedBy,
  }) =>
      ProductCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        displayOrder: displayOrder ?? this.displayOrder,
        categoryImage: categoryImage ?? this.categoryImage,
        isActive: isActive ?? this.isActive,
        isDelete: isDelete ?? this.isDelete,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        createdBy: createdBy ?? this.createdBy,
        modifiedBy: modifiedBy ?? this.modifiedBy,
      );

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      ProductCategory(
        id: json["id"],
        name: json["name"],
        displayOrder: json["displayOrder"],
        categoryImage: json["categoryImage"],
        isActive: json["isActive"],
        isDelete: json["isDelete"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["createdBy"],
        modifiedBy: json["modifiedBy"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "displayOrder": displayOrder,
        "categoryImage": categoryImage,
        "isActive": isActive,
        "isDelete": isDelete,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "createdBy": createdBy,
        "modifiedBy": modifiedBy,
      };
}
