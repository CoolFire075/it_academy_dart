import 'student.dart';
import 'students_group.dart';

void main() {
  var studentsGroup = StudentsGroup();
  var student = Student('Maxim Ivanov', DateTime(2023), 3.6);
  studentsGroup.addStudent(student);
  var student2 = Student('Ivan', DateTime(2023), 1.9);
  studentsGroup.addStudent(student2);
  var student3 = Student('Sam Smith', DateTime(2023), 2.7);
  studentsGroup.addStudent(student3);
  var student4 = Student('Akyl', DateTime(2023), 3.8);
  studentsGroup.addStudent(student4);
  var student5 = Student('Akyl', DateTime(2023), 2.8);
  studentsGroup.addStudent(student5);
  var student6 = Student('Akyl', DateTime(2023), 3.1);
  studentsGroup.addStudent(student6);
  var student7 = Student('Akyl', DateTime(2023), 2.4);
  studentsGroup.addStudent(student7);
  var student8 = Student('Akyl', DateTime(2023), 3.3);
  studentsGroup.addStudent(student8);
  print(studentsGroup.list);

  List<Student> foundedStudent = studentsGroup.findStudent();
  print('Студент , которого вы ищете: $foundedStudent');
  List<Student> foundedStudentsByGPA = studentsGroup.findStudentsByGPA();
  print('Студенты , которых вы ищете:  $foundedStudentsByGPA');
}
