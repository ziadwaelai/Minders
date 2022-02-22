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

List<MemberInfo> members = [
  MemberInfo("ziad wael", 20, "Cairo"),
  MemberInfo("moazz salama", 20, "helwan"),
  MemberInfo("abdullah mohamed", 20, "helwan"),
  MemberInfo("arwa walaa", 20, "Cairo"),
  MemberInfo("farida", 20, "Cairo"),
  MemberInfo("ibrahmed elassal", 20, "Cairo"),
  MemberInfo("jana", 20, "Cairo"),
  MemberInfo("mariam tolba", 20, "Cairo"),
  MemberInfo("mohamed talat ", 20, "helwan"),
  MemberInfo("radwa elias", 20, "Cairo"),
  MemberInfo("salma", 20, "Cairo"),
  MemberInfo("muhammed koka", 20, "helwan"),
  MemberInfo("hader sameh", 20, "helwan"),
];

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
  } else {
    members[id - 1].newPrint();
  }
}

void searchByName(String _name) {
  for (int i = 0; i < members.length; i++) {
    if (members[i].name.contains(_name)) {
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
  List<MemberInfo> temp = members;
  temp.sort((a, b) => a.name.length.compareTo(b.name.length));
  for (int i = 0; i < temp.length; i++) {
    temp[i].newPrint();
  }
}

void clearConsole() {
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
