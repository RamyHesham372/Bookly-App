import 'IndustryIdentifiers.dart';
import 'ReadingModes.dart';
import 'PanelizationSummary.dart';
import 'ImageLinks.dart';

/// title : "Concepts, Techniques, and Models of Computer Programming"
/// authors : ["Peter Van Roy","Seif Haridi"]
/// publisher : "MIT Press"
/// publishedDate : "2004-02-20"
/// description : "Teaching the science and the technology of programming as a unified discipline that shows the deep relationships between programming paradigms. This innovative text presents computer programming as a unified discipline in a way that is both practical and scientifically sound. The book focuses on techniques of lasting value and explains them precisely in terms of a simple abstract machine. The book presents all major programming paradigms in a uniform framework that shows their deep relationships and how and where to use them together. After an introduction to programming concepts, the book presents both well-known and lesser-known computation models (\"programming paradigms\"). Each model has its own set of techniques and each is included on the basis of its usefulness in practice. The general models include declarative programming, declarative concurrency, message-passing concurrency, explicit state, object-oriented programming, shared-state concurrency, and relational programming. Specialized models include graphical user interface programming, distributed programming, and constraint programming. Each model is based on its kernel language—a simple core language that consists of a small number of programmer-significant elements. The kernel languages are introduced progressively, adding concepts one by one, thus showing the deep relationships between different models. The kernel languages are defined precisely in terms of a simple abstract machine. Because a wide variety of languages and programming paradigms can be modeled by a small set of closely related kernel languages, this approach allows programmer and student to grasp the underlying unity of programming. The book has many program fragments and exercises, all of which can be run on the Mozart Programming System, an Open Source software package that features an interactive incremental development environment."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9780262220699"},{"type":"ISBN_10","identifier":"0262220695"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 931
/// printType : "BOOK"
/// categories : ["Computers"]
/// averageRating : 5
/// ratingsCount : 1
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.1.0.0.preview.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=gL34DwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=gL34DwAAQBAJ&dq=programming&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Concepts_Techniques_and_Models_of_Comput.html?hl=&id=gL34DwAAQBAJ"

class VolumeInfo {
  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  num? pageCount;
  String? printType;
  List<String>? categories;
  num? averageRating;
  num? ratingsCount;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] =
          industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['averageRating'] = averageRating;
    map['ratingsCount'] = ratingsCount;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }
}
