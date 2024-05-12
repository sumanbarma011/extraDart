//generic class in dart
class Name<T> {
  Name(this.nam);
  T nam;
}

//generic function in dart

void addition<T>(T a, T b) {
  print('$a,$b');
}

//generic function in dart with different dataType
void display<T, U>(T a, U u) {
  print('$a,$u');
}

//----------------------- restricting data types in function --------------------------------//
num multiply<T extends num>(T a, T b) {
  return (a * b);
}

//------------ similarly we can do so in the class to restrict its types -----------------------//

abstract class Shape {
  double get area;
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
  @override
  double get area {
    return (radius * radius * (22 / 7));
  }
}

class Rectangle implements Shape {
  final double width;
  final double height;
  Rectangle(this.height, this.width);
  @override
  double get area {
    return width * height;
  }
}

class Region<T extends Shape> {
  List<T> shape;
  Region({required this.shape});
  double get totalArea {
    double totalAreaObt = 0;
    for (var each in shape) {
      totalAreaObt += each.area;
    }
    return totalAreaObt;
  }
}
// todays question- does implements for abstract is just like inheritance to a class
// difference between interface and implements and extend

void main() {
  // Name<String> name = Name<String>('Suman');
  // print(name.nam);
  // Name<int> age = Name<int>(23);
  // print(age.nam);
  // addition<int>(2, 4);
  // display<int, String>(2, 'Lucy');
  // print(multiply(2, 3));
  final Circle circle = Circle(10);
  final Rectangle rectangle = Rectangle(3, 2);
  final Region region = Region(shape: [circle, rectangle]);
  print(
      'area of circle is ${circle.area} area of rectangle is ${rectangle.area} and totalarea is ${region.totalArea}');
}
