import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "gL34DwAAQBAJ"
/// etag : "2xFnI3hGV+M"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/gL34DwAAQBAJ"
/// volumeInfo : {"title":"Concepts, Techniques, and Models of Computer Programming","authors":["Peter Van Roy","Seif Haridi"],"publisher":"MIT Press","publishedDate":"2004-02-20","description":"Teaching the science and the technology of programming as a unified discipline that shows the deep relationships between programming paradigms. This innovative text presents computer programming as a unified discipline in a way that is both practical and scientifically sound. The book focuses on techniques of lasting value and explains them precisely in terms of a simple abstract machine. The book presents all major programming paradigms in a uniform framework that shows their deep relationships and how and where to use them together. After an introduction to programming concepts, the book presents both well-known and lesser-known computation models (\"programming paradigms\"). Each model has its own set of techniques and each is included on the basis of its usefulness in practice. The general models include declarative programming, declarative concurrency, message-passing concurrency, explicit state, object-oriented programming, shared-state concurrency, and relational programming. Specialized models include graphical user interface programming, distributed programming, and constraint programming. Each model is based on its kernel language—a simple core language that consists of a small number of programmer-significant elements. The kernel languages are introduced progressively, adding concepts one by one, thus showing the deep relationships between different models. The kernel languages are defined precisely in terms of a simple abstract machine. Because a wide variety of languages and programming paradigms can be modeled by a small set of closely related kernel languages, this approach allows programmer and student to grasp the underlying unity of programming. The book has many program fragments and exercises, all of which can be run on the Mozart Programming System, an Open Source software package that features an interactive incremental development environment.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9780262220699"},{"type":"ISBN_10","identifier":"0262220695"}],"readingModes":{"text":false,"image":true},"pageCount":931,"printType":"BOOK","categories":["Computers"],"averageRating":5,"ratingsCount":1,"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.1.0.0.preview.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=gL34DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=gL34DwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com.eg/books?id=gL34DwAAQBAJ&dq=programming&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Concepts_Techniques_and_Models_of_Comput.html?hl=&id=gL34DwAAQBAJ"}
/// saleInfo : {"country":"EG","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Concepts_Techniques_and_Models_of_Comput-sample-pdf.acsm?id=gL34DwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=gL34DwAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"This innovative text presents computer programming as a unified discipline in a way that is both practical and scientifically sound."}

class BookModel {
  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = VolumeInfo.fromJson(json['volumeInfo']);
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  late VolumeInfo volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    map['volumeInfo'] = volumeInfo.toJson();
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}
