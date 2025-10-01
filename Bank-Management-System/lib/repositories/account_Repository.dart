import 'package:back_management_system/models/account.dart';

class AccountRepository {
  final Map<int, Account> _storage = {};

  // For find by ID
  Account? findByID(int id) => _storage[id];

  // For Find All
  List<Account> findAll() => _storage.values.toList();

//  For save Account
  void save(Account account) {
    _storage[account.accountNumber] = account;
  }

//  For Delete by ID
  void delete(int id) => _storage.remove(id);
}
