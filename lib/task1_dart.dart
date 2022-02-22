import 'dart:io';
class MemberInfo {
  late String name;
  static int id = 0;
  late double age;
  late String faculty;
  late int uid;
  MemberInfo(this.name, this.age, this.faculty) {
    id++;
    uid = id;
  }
  void newPrint() {
    print("ID:$uid  Name:$name  Age:$age  Faculty:$faculty");
  }

}
MemberInfo add() {
  print("Enter Memebr Name ,Age, Faculty :");
  var name = stdin.readLineSync();
  var iage = stdin.readLineSync();
  var age = double.tryParse(iage ?? "0.0");
  var faculty = stdin.readLineSync();
  var temp = MemberInfo(name!, age!, faculty!);
  return temp;
}
List<MemberInfo> members = [];

void delete(int id) {
  if (id > MemberInfo.id + 1) {
    print("Item Not Found");
  } else {
    members.removeAt(id - 1);
    print("Member deleted");
  }
}
void searchByID(int id) {
  if (id > MemberInfo.id + 1) {
    print("Not Found");
  }else{
  members[id - 1].newPrint();
  }
}
void searchByName(String _name) {
  for (int i = 0; i < members.length; i++) {
    if (members[i].name == _name) {
      members[i].newPrint();
      break;
    } else {
      print("Not Found");
    }
  }
}
void displayAllMembers() {
  for (int i = 0; i < members.length; i++) {
    members[i].newPrint();
  }
}
void displayAllMembersSorted() {
  members.sort((a, b) => a.name.length.compareTo(b.name.length));
  for (int i = 0; i < members.length; i++) {
    members[i].newPrint();
  }
}
void clearConsole(){
  //to clear console
  print("\x1B[2J\x1B[0;0H");
}
bool otherOperation() {
  print("Other Operation [yes], Exite [no]");
  var input = stdin.readLineSync();
  if (input == "yes" || input == "YES") {
    return true;
  } else {
    return false;
  }
}
