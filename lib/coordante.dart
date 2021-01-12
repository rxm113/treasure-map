import 'state.dart';

class Coordinate {
  final int x;
  final int y;
  State state = State.ocea;

  Coordinate(this.x, this.y);

  int ifPassable() {
    if (this.state == State.gold ||
        this.state == State.ocea ||
        this.state == State.star ||
        this.state == State.path) {
      return 0;
    } else {
      return 1;
    }
  }

  @override
  String toString() {
    return '| X: ${x}, Y ${y}} - ${state} |';
  }
}
