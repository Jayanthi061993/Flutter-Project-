import 'dart:convert';

class AccountsResponse {
  late final List<Accounts> override_accounts;

  AccountsResponse({required this.override_accounts});

  factory AccountsResponse.fromMap(Map<String, dynamic> map) {
    return AccountsResponse(
      override_accounts:
          List<Accounts>.from(map['items']?.map((x) => Accounts.fromMap(x))),
    );
  }

  factory AccountsResponse.fromJson(String source) =>
      AccountsResponse.fromMap(json.decode(source));
}

class Accounts {
  final Identity identity;
  final Transactions transactions;

  Accounts({
    required this.identity,
    required this.transactions,
  });

  factory Accounts.fromMap(Map<String, dynamic> map) {
    return Accounts(
        identity: Identity.fromMap(map['identity']),
        transactions: Transactions.fromMap(map['transactions']));
  }

  factory Accounts.fromJson(String source) =>
      Accounts.fromMap(json.decode(source));
}

class Identity {
  final String names;

  Identity({required this.names});

  Map<String, dynamic> toMap() {
    return {'names': names};
  }

  // ignore: slash_for_doc_comments
  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      names: map['names'] ?? '',
    );
  }
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

  Map<String, dynamic> toMap() {
    return {
      'date_transacted': date_transacted,
      'date_posted': date_posted,
      'currency': currency,
      'amount': amount,
      'description': description,
    };
  }

  // ignore: slash_for_doc_comments
  factory Transactions.fromMap(Map<String, dynamic> map) {
    return Transactions(
      date_transacted: map['date_transacted'] ?? '',
      date_posted: map['date_posted'] ?? '',
      currency: map['currency'] ?? '',
      description: map['description'] ?? '',
      amount: map['amount']?.toDouble() ?? 0.0,
    );
  }
}
