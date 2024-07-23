enum Colour { yellow, blue, red }

void main() {
  print(Colour.values);
  Colour.values.forEach((v) => print('$v'));
}
