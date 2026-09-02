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
    double result = 0.0;
    
    // Improved output by formatting numbers properly (removing unnecessary decimals)
    String tempStr = temp == temp.toInt() ? temp.toInt().toString() : temp.toString();
    String resultStr = "";

    switch (choice) {
      case 1:
        result = (temp * 9 / 5) + 32;
        resultStr = result == result.toInt() ? result.toInt().toString() : result.toStringAsFixed(2);
        print("$tempStr°C = $resultStr°F");
        break;
      case 2:
        result = (temp - 32) * 5 / 9;
        resultStr = result == result.toInt() ? result.toInt().toString() : result.toStringAsFixed(2);
        print("$tempStr°F = $resultStr°C");
        break;
      case 3:
        result = temp + 273.15;
        resultStr = result == result.toInt() ? result.toInt().toString() : result.toStringAsFixed(2);
        print("$tempStr°C = $resultStr K");
        break;
      case 4:
        result = temp - 273.15;
        resultStr = result == result.toInt() ? result.toInt().toString() : result.toStringAsFixed(2);
        print("$tempStr K = $resultStr°C");
        break;
      case 5:
        result = (temp - 32) * 5 / 9 + 273.15;
        resultStr = result == result.toInt() ? result.toInt().toString() : result.toStringAsFixed(2);
        print("$tempStr°F = $resultStr K");
        break;
      case 6:
        result = (temp - 273.15) * 9 / 5 + 32;
        resultStr = result == result.toInt() ? result.toInt().toString() : result.toStringAsFixed(2);
        print("$tempStr K = $resultStr°F");
        break;
    }
// Prompt for next iteration
    stdout.write("Do you want to perform another conversion? (y/n): ");
    String? continueInput = stdin.readLineSync();

    if (continueInput != null && continueInput.toLowerCase() == 'n') {
      keepRunning = false;
      print("====================================");
      print("       Thank You!");
      print("       Program Ended");
      print("====================================");
    }
  }
}
