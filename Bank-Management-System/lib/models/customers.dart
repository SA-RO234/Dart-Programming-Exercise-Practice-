class Customers {
  final int _id;
  final String _name;
  final String _email;

  Customers({required int id, required String name, required String email})
      : this._id = id,
        this._name = name,
        this._email = email;

  //  getter
  int get id => this._id;
  String get name => this._name;
  String get email => this._email;

  @override
  String toString() =>
      'Customer(id: ${this._id}, Name: ${this._name}, Email: ${this._email})';
}
