import 'dart:io';
void main() {
  bool keepRunning = true;
 
 
while (keepRunning) {
    print("====================================");
    print("       SMART TEMPERATURE CONVERTER");
    print("====================================");
    print("1. Celsius to Fahrenheit");
    print("2. Fahrenheit to Celsius");
    print("3. Celsius to Kelvin");
    print("4. Kelvin to Celsius");
    print("5. Fahrenheit to Kelvin");
    print("6. Kelvin to Fahrenheit");
    print("7. Exit");
    stdout.write("Enter your choice: ");
    String? choiceInput = stdin.readLineSync();
    int? choice = int.tryParse(choiceInput ?? "");

    if (choice == null || choice < 1 || choice > 7) {
      print("Invalid choice. Please enter a number between 1 and 7.");
      continue;
    }

    if (choice == 7) {
      print("====================================");
      print("       Thank You!");
      print("       Program Ended");
      print("====================================");
      break;
    }

    // Improved output to specify unit dynamically
    String unit = "";
    if (choice == 1 || choice == 3) unit = "Celsius";
    else if (choice == 2 || choice == 5) unit = "Fahrenheit";
    else if (choice == 4 || choice == 6) unit = "Kelvin";

    stdout.write("Enter temperature in $unit: ");
    String? tempInput = stdin.readLineSync();
    double? temp = double.tryParse(tempInput ?? "");

    if (temp == null) {
      print("Invalid temperature. Please enter a valid number.");
      continue;
    }