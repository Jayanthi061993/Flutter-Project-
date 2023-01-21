import 'dart:convert';

class BooksResponse {
  final int totalItems;
  final List<Book> items;

  BooksResponse({required this.totalItems, required this.items});

  factory BooksResponse.fromMap(Map<String, dynamic> map) {
    return BooksResponse(
      totalItems: map['totalItems']?.toInt() ?? 0,
      items: List<Book>.from(map['items']?.map((x) => Book.fromMap(x))),
    );
  }

  factory BooksResponse.fromJson(String source) =>
      BooksResponse.fromMap(json.decode(source));
}

class Book {
  final String id;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;

  Book({
    required this.id,
    required this.volumeInfo,
    required this.saleInfo,
  });

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
        id: map['id'] ?? '',
        volumeInfo: VolumeInfo.fromMap(map['volumeInfo']),
        saleInfo: SaleInfo.fromMap(map['saleInfo']));
  }

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));
}

class VolumeInfo {
  final String title;
  final List<String> authors;
  final String publisher;

  VolumeInfo(
      {required this.title, required this.authors, required this.publisher});

  factory VolumeInfo.fromMap(Map<String, dynamic> map) {
    return VolumeInfo(
      title: map['title'] ?? '',
      authors: List<String>.from(map['authors']),
      publisher: map['publisher'] ?? '',
    );
  }

  factory VolumeInfo.fromJson(String source) =>
      VolumeInfo.fromMap(json.decode(source));
}

class SaleInfo {
  final RetailPrice? retailPrice;
  SaleInfo({
    required this.retailPrice,
  });

  Map<String, dynamic> toMap() {
    return {
      'retailPrice': retailPrice?.toMap(),
    };
  }

  factory SaleInfo.fromMap(Map<String, dynamic> map) {
    return SaleInfo(
      retailPrice: (map['retailPrice']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SaleInfo.fromJson(String source) =>
      SaleInfo.fromMap(json.decode(source));
}

class RetailPrice {
  final double amount;
  final String currencyCode;

  const RetailPrice({
    required this.amount,
    required this.currencyCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'currencyCode': currencyCode,
    };
  }

  // ignore: slash_for_doc_comments
  factory RetailPrice.fromMap(Map<String, dynamic> map) {
    return RetailPrice(
      amount: map['amount']?.toDouble() ?? 0.0,
      currencyCode: map['currencyCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RetailPrice.fromJson(String source) =>
      RetailPrice.fromMap(json.decode(source));
}
