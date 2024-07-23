class Rectangle {
  double _length;
  double _width;


  double get length => _length;
  double get width => _width;

 

  set length(double value) {
    _length = value;
  }

  set width(double value) {
    _width = value;
  }

  
  double get area => _length * _width;
  


  Rectangle(this._length, this._width);
}

void main() {
  var rect = Rectangle(5.0, 3.0);


  print('Length: ${rect.length}');
  print('Width: ${rect.width}');
  
  print('Area: ${rect.area}');
  
  
  rect.length = 7.0;
  rect.width = 4.0;
  
  
  print('Updated Length: ${rect.length}');
  print('Updated Width: ${rect.width}');
  

  print('Updated Area: ${rect.area}');
}
