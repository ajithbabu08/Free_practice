import 'dart:math';

class Circle {
  double _radius;

  double get radius => _radius;

  set radius(double value) {
    if (value >= 0) {
      _radius = value;
    } else {
      throw ArgumentError('Radius cannot be negative.');
    }
  }

  double get area {
    return pi * _radius * _radius;
  }

  Circle(this._radius);
}

void main() {
  var circle = Circle(5.0);
  
  print('Radius: ${circle.radius}');
  print('Area: ${circle.area}');
  
  circle.radius = 7.0;
  
  print('Updated Radius: ${circle.radius}');
  print('Updated Area: ${circle.area}');
}
