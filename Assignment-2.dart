import 'dart:io';

void main() {
  print("====================================");
  print("       SMART TEMPERATURE CONVERTER");
  print("====================================");
}
double result = 0.0;
    
    // Formulas:
    // result = (temp * 9 / 5) + 32;               // Celsius → Fahrenheit
    // result = (temp - 32) * 5 / 9;               // Fahrenheit → Celsius
    // result = temp + 273.15;                     // Celsius → Kelvin
    // result = temp - 273.15;                     // Kelvin → Celsius
    // result = (temp - 32) * 5 / 9 + 273.15;      // Fahrenheit → Kelvin
    // result = (temp - 273.15) * 9 / 5 + 32;      // Kelvin → Fahrenheit