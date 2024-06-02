class Rectangle {
  int width = 0;
  int height = 0;
  late Point origin;

  // Un constructor
  Rectangle({Point? origin, this.width = 0, this.height = 0}) {
    this.origin = origin ?? Point(0, 0);
  }

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';

  // Un método para mover el rectángulo
  void move(int x, int y) {
    origin.x = x;
    origin.y = y;
  }

  // Un método para calcular el área del rectángulo
  int getArea() {
    return width * height;
  }
}

void main() {
  print(Rectangle(origin: Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}
