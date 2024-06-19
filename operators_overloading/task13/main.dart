import "employee.dart";

void main(){
  Employee employee = Employee(100000);
  Employee employee2 = Employee(100000);
  Employee employee3 = Employee(employee.salary + employee2.salary);
  print(employee3);
  print(employee.salary == employee2.salary);
}