enum TransactionType { deposit, withdraw, transfer }

class Transaction {
  final int _id;
  final int _accountID;
  final TransactionType _type;
  final double _amount;
  final DateTime _timestamp;
  final String _note;

  Transaction(
      {required int id,
      required int accountID,
      required TransactionType type,
      required double amount,
      required DateTime timestamp,
      required String note})
      : this._id = id,
        this._accountID = accountID,
        this._type = type,
        this._amount = amount,
        this._timestamp = timestamp,
        this._note = note;

  int get id => this._id;
  int get accountID => this._accountID;
  TransactionType get type => this._type;
  double get amount => this._amount;
  DateTime get timestamp => this._timestamp;
  String get note => this._note;

  @override
  String toString() => "Transaction(ID: ${this._id}, AccountID: ${this._accountID}, TransactionType: ${this._type}, Amount: ${this._amount}, Time: ${this._timestamp}, Note: ${this._note})";
}
