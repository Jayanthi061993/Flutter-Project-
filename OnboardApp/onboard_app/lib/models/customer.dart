import 'dart:convert';

class CustomerResponse {
  late final List<Customer> override_accounts;

  CustomerResponse({required this.override_accounts});

  factory CustomerResponse.fromMap(Map<String, dynamic> map) {
    return CustomerResponse(
      override_accounts:
          List<Customer>.from(map['items']?.map((x) => Customer.fromMap(x))),
    );
  }

  factory CustomerResponse.fromJson(String source) =>
      CustomerResponse.fromMap(json.decode(source));
}

class Customer {
  final Identity identity;
  final Transactions transactions;

  Customer({
    required this.identity,
    required this.transactions,
  });

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
        identity: Identity.fromMap(map['identity']),
        transactions: Transactions.fromMap(map['transactions']));
  }

  factory Customer.fromJson(String source) =>
      Customer.fromMap(json.decode(source));
}

class Identity {
  final String names;

  Identity({required this.names});

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      names: map['names'] ?? '',
    );
  }

  factory Identity.fromJson(String source) =>
      Identity.fromMap(json.decode(source));
}

class Transactions {
  final String date_transacted;
  final String date_posted;
  final String currency;
  final double amount;
  final String description;

  Transactions(
      {required this.date_transacted,
      required this.date_posted,
      required this.currency,
      required this.amount,
      required this.description});

  factory Transactions.fromMap(Map<String, dynamic> map) {
    return Transactions(
      date_transacted: map['date_transacted'] ?? '',
      date_posted: map['date_posted'] ?? '',
      currency: map['currency'] ?? '',
      amount: map['amount'] ?? '',
      description: map[''] ?? '',
    );
  }

  factory Transactions.fromJson(String source) =>
      Transactions.fromMap(json.decode(source));
}
