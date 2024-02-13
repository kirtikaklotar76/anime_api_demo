// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'dart:convert';

ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

String apiModelToJson(ApiModel data) => json.encode(data.toJson());

class ApiModel {
  Pagination? pagination;
  List<AnimeModel>? data;

  ApiModel({
    this.pagination,
    this.data,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
        data: json["data"] == null
            ? []
            : List<AnimeModel>.from(
                json["data"]!.map((x) => AnimeModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AnimeModel {
  int? malId;
  String? url;
  Map<String, Image>? images;
  Trailer? trailer;
  bool? approved;
  List<Title>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  DatumType? type;
  Source? source;
  int? episodes;
  Status? status;
  bool? airing;
  Aired? aired;
  String? duration;
  Rating? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  Season? season;
  int? year;
  Broadcast? broadcast;
  List<Demographic>? producers;
  List<Demographic>? licensors;
  List<Demographic>? studios;
  List<Demographic>? genres;
  List<dynamic>? explicitGenres;
  List<Demographic>? themes;
  List<Demographic>? demographics;

  AnimeModel({
    this.malId,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) => AnimeModel(
        malId: json["mal_id"],
        url: json["url"],
        images: Map.from(json["images"]!)
            .map((k, v) => MapEntry<String, Image>(k, Image.fromJson(v))),
        trailer:
            json["trailer"] == null ? null : Trailer.fromJson(json["trailer"]),
        approved: json["approved"],
        titles: json["titles"] == null
            ? []
            : List<Title>.from(json["titles"]!.map((x) => Title.fromJson(x))),
        title: json["title"],
        titleEnglish: json["title_english"],
        titleJapanese: json["title_japanese"],
        titleSynonyms: json["title_synonyms"] == null
            ? []
            : List<String>.from(json["title_synonyms"]!.map((x) => x)),
        type: datumTypeValues.map[json["type"]]!,
        source: sourceValues.map[json["source"]]!,
        episodes: json["episodes"],
        status: statusValues.map[json["status"]]!,
        airing: json["airing"],
        aired: json["aired"] == null ? null : Aired.fromJson(json["aired"]),
        duration: json["duration"],
        rating: ratingValues.map[json["rating"]]!,
        score: json["score"]?.toDouble(),
        scoredBy: json["scored_by"],
        rank: json["rank"],
        popularity: json["popularity"],
        members: json["members"],
        favorites: json["favorites"],
        synopsis: json["synopsis"],
        background: json["background"],
        season: seasonValues.map[json["season"]],
        year: json["year"],
        broadcast: json["broadcast"] == null
            ? null
            : Broadcast.fromJson(json["broadcast"]),
        producers: json["producers"] == null
            ? []
            : List<Demographic>.from(
                json["producers"]!.map((x) => Demographic.fromJson(x))),
        licensors: json["licensors"] == null
            ? []
            : List<Demographic>.from(
                json["licensors"]!.map((x) => Demographic.fromJson(x))),
        studios: json["studios"] == null
            ? []
            : List<Demographic>.from(
                json["studios"]!.map((x) => Demographic.fromJson(x))),
        genres: json["genres"] == null
            ? []
            : List<Demographic>.from(
                json["genres"]!.map((x) => Demographic.fromJson(x))),
        explicitGenres: json["explicit_genres"] == null
            ? []
            : List<dynamic>.from(json["explicit_genres"]!.map((x) => x)),
        themes: json["themes"] == null
            ? []
            : List<Demographic>.from(
                json["themes"]!.map((x) => Demographic.fromJson(x))),
        demographics: json["demographics"] == null
            ? []
            : List<Demographic>.from(
                json["demographics"]!.map((x) => Demographic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "url": url,
        "images": Map.from(images!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "trailer": trailer?.toJson(),
        "approved": approved,
        "titles": titles == null
            ? []
            : List<dynamic>.from(titles!.map((x) => x.toJson())),
        "title": title,
        "title_english": titleEnglish,
        "title_japanese": titleJapanese,
        "title_synonyms": titleSynonyms == null
            ? []
            : List<dynamic>.from(titleSynonyms!.map((x) => x)),
        "type": datumTypeValues.reverse[type],
        "source": sourceValues.reverse[source],
        "episodes": episodes,
        "status": statusValues.reverse[status],
        "airing": airing,
        "aired": aired?.toJson(),
        "duration": duration,
        "rating": ratingValues.reverse[rating],
        "score": score,
        "scored_by": scoredBy,
        "rank": rank,
        "popularity": popularity,
        "members": members,
        "favorites": favorites,
        "synopsis": synopsis,
        "background": background,
        "season": seasonValues.reverse[season],
        "year": year,
        "broadcast": broadcast?.toJson(),
        "producers": producers == null
            ? []
            : List<dynamic>.from(producers!.map((x) => x.toJson())),
        "licensors": licensors == null
            ? []
            : List<dynamic>.from(licensors!.map((x) => x.toJson())),
        "studios": studios == null
            ? []
            : List<dynamic>.from(studios!.map((x) => x.toJson())),
        "genres": genres == null
            ? []
            : List<dynamic>.from(genres!.map((x) => x.toJson())),
        "explicit_genres": explicitGenres == null
            ? []
            : List<dynamic>.from(explicitGenres!.map((x) => x)),
        "themes": themes == null
            ? []
            : List<dynamic>.from(themes!.map((x) => x.toJson())),
        "demographics": demographics == null
            ? []
            : List<dynamic>.from(demographics!.map((x) => x.toJson())),
      };
}

class Aired {
  DateTime? from;
  DateTime? to;
  Prop? prop;
  String? string;

  Aired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  factory Aired.fromJson(Map<String, dynamic> json) => Aired(
        from: json["from"] == null ? null : DateTime.parse(json["from"]),
        to: json["to"] == null ? null : DateTime.parse(json["to"]),
        prop: json["prop"] == null ? null : Prop.fromJson(json["prop"]),
        string: json["string"],
      );

  Map<String, dynamic> toJson() => {
        "from": from?.toIso8601String(),
        "to": to?.toIso8601String(),
        "prop": prop?.toJson(),
        "string": string,
      };
}

class Prop {
  From? from;
  From? to;

  Prop({
    this.from,
    this.to,
  });

  factory Prop.fromJson(Map<String, dynamic> json) => Prop(
        from: json["from"] == null ? null : From.fromJson(json["from"]),
        to: json["to"] == null ? null : From.fromJson(json["to"]),
      );

  Map<String, dynamic> toJson() => {
        "from": from?.toJson(),
        "to": to?.toJson(),
      };
}

class From {
  int? day;
  int? month;
  int? year;

  From({
    this.day,
    this.month,
    this.year,
  });

  factory From.fromJson(Map<String, dynamic> json) => From(
        day: json["day"],
        month: json["month"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "month": month,
        "year": year,
      };
}

class Broadcast {
  String? day;
  String? time;
  Timezone? timezone;
  String? string;

  Broadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
        day: json["day"],
        time: json["time"],
        timezone: timezoneValues.map[json["timezone"]],
        string: json["string"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "time": time,
        "timezone": timezoneValues.reverse[timezone],
        "string": string,
      };
}

enum Timezone { ASIA_TOKYO }

final timezoneValues = EnumValues({"Asia/Tokyo": Timezone.ASIA_TOKYO});

class Demographic {
  int? malId;
  DemographicType? type;
  String? name;
  String? url;

  Demographic({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  factory Demographic.fromJson(Map<String, dynamic> json) => Demographic(
        malId: json["mal_id"],
        type: demographicTypeValues.map[json["type"]]!,
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "mal_id": malId,
        "type": demographicTypeValues.reverse[type],
        "name": name,
        "url": url,
      };
}

enum DemographicType { ANIME }

final demographicTypeValues = EnumValues({"anime": DemographicType.ANIME});

class Image {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Image({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        largeImageUrl: json["large_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "large_image_url": largeImageUrl,
      };
}

enum Rating {
  PG_13_TEENS_13_OR_OLDER,
  PG_CHILDREN,
  R_17_VIOLENCE_PROFANITY,
  R_MILD_NUDITY
}

final ratingValues = EnumValues({
  "PG-13 - Teens 13 or older": Rating.PG_13_TEENS_13_OR_OLDER,
  "PG - Children": Rating.PG_CHILDREN,
  "R - 17+ (violence & profanity)": Rating.R_17_VIOLENCE_PROFANITY,
  "R+ - Mild Nudity": Rating.R_MILD_NUDITY
});

enum Season { FALL, SPRING, SUMMER }

final seasonValues = EnumValues(
    {"fall": Season.FALL, "spring": Season.SPRING, "summer": Season.SUMMER});

enum Source { LIGHT_NOVEL, MANGA, ORIGINAL }

final sourceValues = EnumValues({
  "Light novel": Source.LIGHT_NOVEL,
  "Manga": Source.MANGA,
  "Original": Source.ORIGINAL
});

enum Status { CURRENTLY_AIRING, FINISHED_AIRING }

final statusValues = EnumValues({
  "Currently Airing": Status.CURRENTLY_AIRING,
  "Finished Airing": Status.FINISHED_AIRING
});

class Title {
  TitleType? type;
  String? title;

  Title({
    this.type,
    this.title,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        type: titleTypeValues.map[json["type"]]!,
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "type": titleTypeValues.reverse[type],
        "title": title,
      };
}

enum TitleType { DEFAULT, ENGLISH, FRENCH, GERMAN, JAPANESE, SPANISH, SYNONYM }

final titleTypeValues = EnumValues({
  "Default": TitleType.DEFAULT,
  "English": TitleType.ENGLISH,
  "French": TitleType.FRENCH,
  "German": TitleType.GERMAN,
  "Japanese": TitleType.JAPANESE,
  "Spanish": TitleType.SPANISH,
  "Synonym": TitleType.SYNONYM
});

class Trailer {
  String? youtubeId;
  String? url;
  String? embedUrl;
  Images? images;

  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        youtubeId: json["youtube_id"],
        url: json["url"],
        embedUrl: json["embed_url"],
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "youtube_id": youtubeId,
        "url": url,
        "embed_url": embedUrl,
        "images": images?.toJson(),
      };
}

class Images {
  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  Images({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        mediumImageUrl: json["medium_image_url"],
        largeImageUrl: json["large_image_url"],
        maximumImageUrl: json["maximum_image_url"],
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "medium_image_url": mediumImageUrl,
        "large_image_url": largeImageUrl,
        "maximum_image_url": maximumImageUrl,
      };
}

enum DatumType { MOVIE, TV }

final datumTypeValues =
    EnumValues({"Movie": DatumType.MOVIE, "TV": DatumType.TV});

class Pagination {
  int? lastVisiblePage;
  bool? hasNextPage;
  int? currentPage;
  Items? items;

  Pagination({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    this.items,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        lastVisiblePage: json["last_visible_page"],
        hasNextPage: json["has_next_page"],
        currentPage: json["current_page"],
        items: json["items"] == null ? null : Items.fromJson(json["items"]),
      );

  Map<String, dynamic> toJson() => {
        "last_visible_page": lastVisiblePage,
        "has_next_page": hasNextPage,
        "current_page": currentPage,
        "items": items?.toJson(),
      };
}

class Items {
  int? count;
  int? total;
  int? perPage;

  Items({
    this.count,
    this.total,
    this.perPage,
  });

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        count: json["count"],
        total: json["total"],
        perPage: json["per_page"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "total": total,
        "per_page": perPage,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

// import 'dart:convert';

// ApiModel apiModelFromJson(String str) => ApiModel.fromJson(json.decode(str));

// String apiModelToJson(ApiModel data) => json.encode(data.toJson());

// class ApiModel {
//   Pagination pagination;
//   List<AnimeModel> data;

//   ApiModel({
//     required this.pagination,
//     required this.data,
//   });

//   factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
//         pagination: Pagination.fromJson(json["pagination"]),
//         data: List<AnimeModel>.from(
//             json["data"].map((x) => AnimeModel.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "pagination": pagination.toJson(),
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }

// class AnimeModel {
//   int malId;
//   String url;
//   Map<String, Image> images;
//   Trailer trailer;
//   bool approved;
//   List<Title> titles;
//   String title;
//   String? titleEnglish;
//   String titleJapanese;
//   List<String> titleSynonyms;
//   DatumType type;
//   Source source;
//   int? episodes;
//   Status status;
//   bool airing;
//   Aired aired;
//   String duration;
//   Rating rating;
//   double score;
//   int scoredBy;
//   int rank;
//   int popularity;
//   int members;
//   int favorites;
//   String synopsis;
//   String? background;
//   Season? season;
//   int? year;
//   Broadcast broadcast;
//   List<Demographic> producers;
//   List<Demographic> licensors;
//   List<Demographic> studios;
//   List<Demographic> genres;
//   List<dynamic> explicitGenres;
//   List<Demographic> themes;
//   List<Demographic> demographics;

//   AnimeModel({
//     required this.malId,
//     required this.url,
//     required this.images,
//     required this.trailer,
//     required this.approved,
//     required this.titles,
//     required this.title,
//     required this.titleEnglish,
//     required this.titleJapanese,
//     required this.titleSynonyms,
//     required this.type,
//     required this.source,
//     required this.episodes,
//     required this.status,
//     required this.airing,
//     required this.aired,
//     required this.duration,
//     required this.rating,
//     required this.score,
//     required this.scoredBy,
//     required this.rank,
//     required this.popularity,
//     required this.members,
//     required this.favorites,
//     required this.synopsis,
//     required this.background,
//     required this.season,
//     required this.year,
//     required this.broadcast,
//     required this.producers,
//     required this.licensors,
//     required this.studios,
//     required this.genres,
//     required this.explicitGenres,
//     required this.themes,
//     required this.demographics,
//   });

//   factory AnimeModel.fromJson(Map<String, dynamic> json) => AnimeModel(
//         malId: json["mal_id"],
//         url: json["url"],
//         images: Map.from(json["images"])
//             .map((k, v) => MapEntry<String, Image>(k, Image.fromJson(v))),
//         trailer: Trailer.fromJson(json["trailer"]),
//         approved: json["approved"],
//         titles: List<Title>.from(json["titles"].map((x) => Title.fromJson(x))),
//         title: json["title"],
//         titleEnglish: json["title_english"],
//         titleJapanese: json["title_japanese"],
//         titleSynonyms: List<String>.from(json["title_synonyms"].map((x) => x)),
//         type: datumTypeValues.map[json["type"]] as DatumType,
//         source: sourceValues.map[json["source"]] as Source,
//         episodes: json["episodes"],
//         status: statusValues.map[json["status"]] as Status,
//         airing: json["airing"],
//         aired: Aired.fromJson(json["aired"]),
//         duration: json["duration"],
//         rating: ratingValues.map[json["rating"]] as Rating,
//         score: json["score"].toDouble(),
//         scoredBy: json["scored_by"],
//         rank: json["rank"],
//         popularity: json["popularity"],
//         members: json["members"],
//         favorites: json["favorites"],
//         synopsis: json["synopsis"],
//         background: json["background"],
//         season: seasonValues.map[json["season"]],
//         year: json["year"],
//         broadcast: Broadcast.fromJson(json["broadcast"]),
//         producers: List<Demographic>.from(
//             json["producers"].map((x) => Demographic.fromJson(x))),
//         licensors: List<Demographic>.from(
//             json["licensors"].map((x) => Demographic.fromJson(x))),
//         studios: List<Demographic>.from(
//             json["studios"].map((x) => Demographic.fromJson(x))),
//         genres: List<Demographic>.from(
//             json["genres"].map((x) => Demographic.fromJson(x))),
//         explicitGenres:
//             List<dynamic>.from(json["explicit_genres"].map((x) => x)),
//         themes: List<Demographic>.from(
//             json["themes"].map((x) => Demographic.fromJson(x))),
//         demographics: List<Demographic>.from(
//             json["demographics"].map((x) => Demographic.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "mal_id": malId,
//         "url": url,
//         "images": Map.from(images)
//             .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//         "trailer": trailer.toJson(),
//         "approved": approved,
//         "titles": List<dynamic>.from(titles.map((x) => x.toJson())),
//         "title": title,
//         "title_english": titleEnglish,
//         "title_japanese": titleJapanese,
//         "title_synonyms": List<dynamic>.from(titleSynonyms.map((x) => x)),
//         "type": datumTypeValues.reverse[type],
//         "source": sourceValues.reverse[source],
//         "episodes": episodes,
//         "status": statusValues.reverse[status],
//         "airing": airing,
//         "aired": aired.toJson(),
//         "duration": duration,
//         "rating": ratingValues.reverse[rating],
//         "score": score,
//         "scored_by": scoredBy,
//         "rank": rank,
//         "popularity": popularity,
//         "members": members,
//         "favorites": favorites,
//         "synopsis": synopsis,
//         "background": background,
//         "season": seasonValues.reverse[season],
//         "year": year,
//         "broadcast": broadcast.toJson(),
//         "producers": List<dynamic>.from(producers.map((x) => x.toJson())),
//         "licensors": List<dynamic>.from(licensors.map((x) => x.toJson())),
//         "studios": List<dynamic>.from(studios.map((x) => x.toJson())),
//         "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
//         "explicit_genres": List<dynamic>.from(explicitGenres.map((x) => x)),
//         "themes": List<dynamic>.from(themes.map((x) => x.toJson())),
//         "demographics": List<dynamic>.from(demographics.map((x) => x.toJson())),
//       };
// }

// class Aired {
//   DateTime from;
//   DateTime? to;
//   Prop prop;
//   String string;

//   Aired({
//     required this.from,
//     required this.to,
//     required this.prop,
//     required this.string,
//   });

//   factory Aired.fromJson(Map<String, dynamic> json) => Aired(
//         from: DateTime.parse(json["from"]),
//         to: DateTime.parse(json["to"] ?? "0000-00-00T00:00:00+00:00"),
//         prop: Prop.fromJson(json["prop"]),
//         string: json["string"],
//       );

//   Map<String, dynamic> toJson() => {
//         "from": from?.toIso8601String(),
//         "to": to?.toIso8601String(),
//         "prop": prop?.toJson(),
//         "string": string,
//       };
// }

// class Prop {
//   From? from;
//   From? to;

//   Prop({
//     required this.from,
//     required this.to,
//   });

//   factory Prop.fromJson(Map<String, dynamic> json) => Prop(
//         from: From.fromJson(json["from"]),
//         to: From.fromJson(json["to"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "from": from?.toJson(),
//         "to": to?.toJson(),
//       };
// }

// class From {
//   int? day;
//   int? month;
//   int? year;

//   From({
//     required this.day,
//     required this.month,
//     required this.year,
//   });

//   factory From.fromJson(Map<String, dynamic> json) => From(
//         day: json["day"],
//         month: json["month"],
//         year: json["year"],
//       );

//   Map<String, dynamic> toJson() => {
//         "day": day,
//         "month": month,
//         "year": year,
//       };
// }

// class Broadcast {
//   String? day;
//   String? time;
//   Timezone? timezone;
//   String? string;

//   Broadcast({
//     required this.day,
//     required this.time,
//     required this.timezone,
//     required this.string,
//   });

//   factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
//         day: json["day"],
//         time: json["time"],
//         timezone: timezoneValues.map[json["timezone"]],
//         string: json["string"],
//       );

//   Map<String, dynamic> toJson() => {
//         "day": day,
//         "time": time,
//         "timezone": timezoneValues.reverse[timezone],
//         "string": string,
//       };
// }

// enum Timezone { ASIA_TOKYO }

// final timezoneValues = EnumValues({"Asia/Tokyo": Timezone.ASIA_TOKYO});

// class Demographic {
//   int malId;
//   DemographicType type;
//   String name;
//   String url;

//   Demographic({
//     required this.malId,
//     required this.type,
//     required this.name,
//     required this.url,
//   });

//   factory Demographic.fromJson(Map<String, dynamic> json) => Demographic(
//         malId: json["mal_id"],
//         type: demographicTypeValues.map[json["type"]] as DemographicType,
//         name: json["name"],
//         url: json["url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "mal_id": malId,
//         "type": demographicTypeValues.reverse[type],
//         "name": name,
//         "url": url,
//       };
// }

// enum DemographicType { ANIME }

// final demographicTypeValues = EnumValues({"anime": DemographicType.ANIME});

// class Image {
//   String imageUrl;
//   String smallImageUrl;
//   String largeImageUrl;

//   Image({
//     required this.imageUrl,
//     required this.smallImageUrl,
//     required this.largeImageUrl,
//   });

//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//         imageUrl: json["image_url"],
//         smallImageUrl: json["small_image_url"],
//         largeImageUrl: json["large_image_url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "image_url": imageUrl,
//         "small_image_url": smallImageUrl,
//         "large_image_url": largeImageUrl,
//       };
// }

// enum Rating {
//   PG_13_TEENS_13_OR_OLDER,
//   PG_CHILDREN,
//   R_17_VIOLENCE_PROFANITY,
//   R_MILD_NUDITY
// }

// final ratingValues = EnumValues({
//   "PG-13 - Teens 13 or older": Rating.PG_13_TEENS_13_OR_OLDER,
//   "PG - Children": Rating.PG_CHILDREN,
//   "R - 17+ (violence & profanity)": Rating.R_17_VIOLENCE_PROFANITY,
//   "R+ - Mild Nudity": Rating.R_MILD_NUDITY
// });

// enum Season { FALL, SPRING, SUMMER }

// final seasonValues = EnumValues(
//     {"fall": Season.FALL, "spring": Season.SPRING, "summer": Season.SUMMER});

// enum Source { LIGHT_NOVEL, MANGA, ORIGINAL }

// final sourceValues = EnumValues({
//   "Light novel": Source.LIGHT_NOVEL,
//   "Manga": Source.MANGA,
//   "Original": Source.ORIGINAL
// });

// enum Status { CURRENTLY_AIRING, FINISHED_AIRING }

// final statusValues = EnumValues({
//   "Currently Airing": Status.CURRENTLY_AIRING,
//   "Finished Airing": Status.FINISHED_AIRING
// });

// class Title {
//   TitleType type;
//   String title;

//   Title({
//     required this.type,
//     required this.title,
//   });

//   factory Title.fromJson(Map<String, dynamic> json) => Title(
//         type: titleTypeValues.map[json["type"]] as TitleType,
//         title: json["title"],
//       );

//   Map<String, dynamic> toJson() => {
//         "type": titleTypeValues.reverse[type],
//         "title": title,
//       };
// }

// enum TitleType { DEFAULT, ENGLISH, FRENCH, GERMAN, JAPANESE, SPANISH, SYNONYM }

// final titleTypeValues = EnumValues({
//   "Default": TitleType.DEFAULT,
//   "English": TitleType.ENGLISH,
//   "French": TitleType.FRENCH,
//   "German": TitleType.GERMAN,
//   "Japanese": TitleType.JAPANESE,
//   "Spanish": TitleType.SPANISH,
//   "Synonym": TitleType.SYNONYM
// });

// class Trailer {
//   String? youtubeId;
//   String? url;
//   String? embedUrl;
//   Images? images;

//   Trailer({
//     required this.youtubeId,
//     required this.url,
//     required this.embedUrl,
//     required this.images,
//   });

//   factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
//         youtubeId: json["youtube_id"],
//         url: json["url"],
//         embedUrl: json["embed_url"],
//         images: Images.fromJson(json["images"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "youtube_id": youtubeId,
//         "url": url,
//         "embed_url": embedUrl,
//         "images": images?.toJson(),
//       };
// }

// class Images {
//   String? imageUrl;
//   String? smallImageUrl;
//   String? mediumImageUrl;
//   String? largeImageUrl;
//   String? maximumImageUrl;

//   Images({
//     required this.imageUrl,
//     required this.smallImageUrl,
//     required this.mediumImageUrl,
//     required this.largeImageUrl,
//     required this.maximumImageUrl,
//   });

//   factory Images.fromJson(Map<String, dynamic> json) => Images(
//         imageUrl: json["image_url"],
//         smallImageUrl: json["small_image_url"],
//         mediumImageUrl: json["medium_image_url"],
//         largeImageUrl: json["large_image_url"],
//         maximumImageUrl: json["maximum_image_url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "image_url": imageUrl,
//         "small_image_url": smallImageUrl,
//         "medium_image_url": mediumImageUrl,
//         "large_image_url": largeImageUrl,
//         "maximum_image_url": maximumImageUrl,
//       };
// }

// enum DatumType { MOVIE, TV }

// final datumTypeValues =
//     EnumValues({"Movie": DatumType.MOVIE, "TV": DatumType.TV});

// class Pagination {
//   int lastVisiblePage;
//   bool hasNextPage;
//   int currentPage;
//   Items items;

//   Pagination({
//     required this.lastVisiblePage,
//     required this.hasNextPage,
//     required this.currentPage,
//     required this.items,
//   });

//   factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
//         lastVisiblePage: json["last_visible_page"],
//         hasNextPage: json["has_next_page"],
//         currentPage: json["current_page"],
//         items: Items.fromJson(json["items"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "last_visible_page": lastVisiblePage,
//         "has_next_page": hasNextPage,
//         "current_page": currentPage,
//         "items": items.toJson(),
//       };
// }

// class Items {
//   int count;
//   int total;
//   int perPage;

//   Items({
//     required this.count,
//     required this.total,
//     required this.perPage,
//   });

//   factory Items.fromJson(Map<String, dynamic> json) => Items(
//         count: json["count"],
//         total: json["total"],
//         perPage: json["per_page"],
//       );

//   Map<String, dynamic> toJson() => {
//         "count": count,
//         "total": total,
//         "per_page": perPage,
//       };
// }

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
