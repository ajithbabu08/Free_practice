class Rectangle {
  double _length;
  double _width;

  double get newlength => _length;

  // {
  //   return _length;
  // }

  double get newwidth => _width;

  set newlength(double value) {
    _length = value;
  }

  set newwidth(double value) {
    _width = value;
  }

  double get area {
    return _length * _width;
  }

  Rectangle(this._length, this._width);
}

void main() {
  var rect = Rectangle(10.0, 10.0);

  print("length: ${rect._length}");
  print("width: ${rect._width}");
  print("Area is: ${rect.area}");

  rect.newlength = 6;
  rect.newwidth = 6;

  print("Updated length: ${rect.newlength}");
  print("Updated width: ${rect.newwidth}");
  print("New area is: ${rect.area}");
}
