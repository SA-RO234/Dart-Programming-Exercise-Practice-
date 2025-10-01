class Account {
  final int _accountNumber;
  String _accountHolderName;
  double _balance;

  Account(
      {required int accountNumber,
      required String accountHolderName,
      required double initialBalance})
      : this._accountNumber = accountNumber,
        this._accountHolderName = accountHolderName,
        this._balance = initialBalance;

  //  Getter
  int get accountNumber => this._accountNumber;
  String get accountHolderName => this._accountHolderName;
  double get balance => this._balance;

  //  Setter
  set accountHolderName(String name) {
    if (name.isNotEmpty) {
      this._accountHolderName = name;
    } else {
      throw Exception("Account holder name must have, can't be empty");
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      this._balance += amount;
    } else {
      throw Exception("Deposit amount must is positive not negative !");
    }
  }

  void withDraw(double amount) {
    if (amount > 0 && amount <= this.balance) {
      this._balance -= amount;
    } else {
      throw Exception("Insufficient funds or invalid amount !");
    }
  }

  @override
  String toString() => 'Account(id:${this._accountNumber}, Owner: ${this._accountHolderName}, Balance: ${this._balance.toStringAsFixed(2)})';
}
