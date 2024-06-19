import 'employee.dart';

void main() {
  var myList = [
    Employee('Max', 22, 'Team Leader', 500000),
    Employee('Andre', 17, 'Intern', 10000),
    Employee('Nurgazy', 16, 'Intern', 10000),
    Employee('Oleg', 18, 'Junior', 25000),
    Employee('Baatyr', 16, 'Senior', 150000),
    Employee('Akmaral', 17, 'Middle', 70000),
    Employee('Sheerin', 15, 'Junior', 30000),
    Employee('Dilnaza', 23, 'Senior Flutter Developer', 200000),
    Employee('Vadim', 21, 'Middle', 100000)
  ];
  getDismissedEmployee(myList);
}

void getDismissedEmployee(List<Employee> myList) {
  var newEmployeeTeam = [];
  for (var employee in myList) {
    switch (employee) {
      case Employee(
            name: var name,
            age: var age,
            position: var position,
            salary: var salary
          )
          when position != 'Team Leader' &&
              position != 'Senior' &&
              position != 'Senior Flutter Developer' &&
              salary * age > 1000000:
        print('Developer $name will be dismissed 🚪🤫🔫');

      case Employee(name: var name, position: var position, salary: var salary)
          when position == 'Senior Flutter Developer' ||
              position == 'Senior' && salary > 180000:
        print('Developer $name will be dismissed 📲️📴📵');

      case Employee(
          name: var name,
          position: var position,
          salary: var salary,
          age: var age
        ):
        newEmployeeTeam.add(Employee(name, age, position, salary));
    }
  }
  print(newEmployeeTeam);
}
