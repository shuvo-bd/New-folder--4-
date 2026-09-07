class BankAccount {
  String accountHolderName;
  int accountNumber;
  double balance;

  BankAccount(this.accountHolderName, this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited: $amount');
    } else {
      print('Deposit amount must be greater than 0.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('Withdrawn: $amount');
    } else {
      print('Insufficient balance or invalid amount.');
    }
  }

  void displayAccountInfo() {
    print('Account Holder: $accountHolderName');
    print('Account Number: $accountNumber');
    print('Balance: $balance');
  }
}

void main() {
  BankAccount account1 = BankAccount('Rahim', 1001, 5000.0);

  print('Initial Account Info:');
  account1.displayAccountInfo();

  account1.deposit(2000.0);
  print('After Deposit:');
  account1.displayAccountInfo();

  account1.withdraw(1500.0);
  print('After Withdrawal:');
  account1.displayAccountInfo();

  BankAccount account2 = BankAccount('Karim', 1002, 8000.0);
  print('Second Account Info:');
  account2.displayAccountInfo();

  print('Trying to withdraw more than available balance:');
  account2.withdraw(9000.0);
  account2.displayAccountInfo();
}
