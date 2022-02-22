import 'package:task1_dart/task1_dart.dart';
import 'dart:io';

void main() {
  while (true) {
    clearConsole();
    print("       Menu");
    print("1-Add Member");
    print("2-Delete Member");
    print("3-Search");
    print("4-Display All Member");
    var inum = stdin.readLineSync();
    var num = int.tryParse(inum ?? "0");
    if (num == 0) {
      print("Wrong input try again");
      clearConsole();
    } else if (num == 1) {
      clearConsole();
      members.add(add());

      if (!otherOperation()) {
        break;
      }
    } else if (num == 2) {
      clearConsole();
      print("Enter Member ID:");
      var iid = stdin.readLineSync();
      var _id = int.tryParse(iid ?? "0");
      if (_id == 0) {
        print("Wrong input try again");
      } else {
        delete(_id!);
        if (!otherOperation()) {
          break;
        }
      }
    } else if (num == 3) {
      clearConsole();
      print("1-Search by Name");
      print("2-Search by ID");
      var iser = stdin.readLineSync();
      var ser = int.tryParse(iser ?? "0");
      if (ser == 0) {
        print("Wrong input try again");
      } else if (ser == 1) {
        clearConsole();
        var name = stdin.readLineSync();
        print("Enter Member Name");
        searchByName(name!);
        if (!otherOperation()) {
          break;
        }
      } else if (ser == 2) {
        clearConsole();
        print("Enter Member ID");
        var serID = stdin.readLineSync();
        var _serID = int.tryParse(serID ?? "0");
        searchByID(_serID!);
        if (!otherOperation()) {
          break;
        }
      }
    } else if (num == 4) {
      clearConsole();
      print("1-Display all members unsorted");
      print("2-Display all members sorted");

      var des = stdin.readLineSync();
      var _des = int.tryParse(des ?? "0");
      if (_des == 0) {
        print("Wrong input try again");
      } else if (_des == 1) {
        clearConsole();
        displayAllMembers();
        if (!otherOperation()) {
          break;
        }
      } else {
        clearConsole();
        displayAllMembersSorted();
        if (!otherOperation()) {
          break;
        }
      }
    }
  }
}
