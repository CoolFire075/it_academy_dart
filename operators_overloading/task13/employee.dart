class Employee {
  final int _salary;

  Employee(this._salary);

  int get salary => _salary;

  int operator +(int other) => salary + other;

  int operator -(int other) => salary - other;

  bool operator ==(Object other) {
    if (other is Employee) return salary == other.salary;
    else print("This object isn't Employee");
    return false;
  }

  @override
  String toString() {
    return 'Employee{_salary: $_salary}';
  }
}
