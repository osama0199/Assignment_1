/*
Question :
Create a class Car with the following properties:
● brand: a string representing the brand of the car
● model: a string representing the model of the car
● year: an integer representing the year the car was made
● milesDriven: a double representing the number of miles driven by the car
The class should have the following methods:
● drive(double miles): a method that takes a double parameter representing the
number of miles driven and adds it to the milesDriven property
● getMilesDriven(): a method that returns the value of the milesDriven property
● getBrand(): a method that returns the value of the brand property
● getModel(): a method that returns the value of the model property
● getYear(): a method that returns the value of the year property

● getAge(): a method that returns the age of the car (i.e. the difference between the
current year and the year property)
★ The class should also have a static property called numberOfCars that keeps track
of the number of Car objects that have been created. This property should be
incremented every time a Car object is created.
In the main() function, create three Car objects with different brands, models, and years.
Drive each car a different number of miles using the drive() method.
Print out the brand, model, year, and miles driven for each car using the
getBrand(), getModel(), getYear(), and getMilesDriven() methods, respectively.
Also print out the age of each car using the getAge() method.
Finally, print out the total number of Car objects created using the numberOfCars static
property.

 */


import 'package:dart/dart.dart' as dart;

class Car {
  // Static property
  static int numberOfCars = 0;

  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Create ten Car objects with different brands, models, and years
  Car car1 = Car("Toyota", "Camry", 2020, 15000.0);
  Car car2 = Car("Honda", "Civic", 2018, 25000.0);
  Car car3 = Car("Ford", "Mustang", 2015, 30000.0);
  Car car4 = Car("BMW", "Z4", 2003, 35000.0);
  Car car5 = Car("Audi", "A1", 2010, 40000.0);
  Car car6 = Car("Lamborghini", "Aventador", 2011, 42000.0);
  Car car7 = Car("Rolls Royce", "Spectre", 2023, 32000.0);
  Car car8 = Car("Ferrari", "12 Cilindri Spider", 2024, 35000.0);
  Car car9 = Car("Suzuki", "Across", 2021, 30000.0);
  Car car10 = Car("Tesla", "Cybertruck", 2024, 34000.0);


  // Drive each car a different number of miles
  car1.drive(500.0);
  car2.drive(1000.0);
  car3.drive(1500.0);
  car4.drive(1500.0);
  car5.drive(2000.0);
  car6.drive(2500.0);
  car7.drive(2500.0);
  car8.drive(2200.0);
  car9.drive(1700.0);
  car10.drive(2700.0);


  List<Car> cars = [car1, car2, car3, car4, car5, car6, car7, car8, car9, car10];
  for (int i = 0; i < cars.length; i++) {
    Car car = cars[i];
    print("Car ${i + 1}:");
    print("  Brand: ${car.getBrand()}");
    print("  Model: ${car.getModel()}");
    print("  Year: ${car.getYear()}");
    print("  Miles Driven: ${car.getMilesDriven()}");
    print("  Age: ${car.getAge()} years");
    print("");
  }


  print("Total number of cars created: ${Car.numberOfCars}");
}