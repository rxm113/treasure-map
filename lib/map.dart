import 'dart:io';
import 'package:pathfinding/core/grid.dart';
import 'package:pathfinding/finders/astar.dart';

import 'utils.dart';
import 'coordante.dart';
import 'state.dart';

class TreasureMap {
  List cordinates = null;
  final int xMax;
  final int yMax;
  Coordinate start;
  Coordinate treasure;
  bool solvable;

  //Constrcutur: to String take input and build the Treasure Map.
  TreasureMap(List array, this.xMax, this.yMax) {
    //get max and max
    cordinates = List.generate(this.yMax + 1,
        (i) => List.generate(this.xMax + 1, (j) => new Coordinate(j, i)),
        growable: false);

    for (var i = 0; i < array.length; i++) {
      if (i == 0) {
        cordinates[0][0].state = State.star;
        this.start = cordinates[0][0];
      } else if (i == array.length - 1) {
        cordinates[array.elementAt(i)[1]][array.elementAt(i)[0]].state =
            State.gold;
        this.treasure =
            cordinates[array.elementAt(i)[1]][array.elementAt(i)[0]];
      } else {
        cordinates[array.elementAt(i)[1]][array.elementAt(i)[0]].state =
            State.reef;
      }
    }
  }

  //print the Treasure map
  void printTreasureMap() {
    for (List<Coordinate> row in this.cordinates) {
      for (Coordinate cordinate in row) {
        stdout.write(cordinate.toString());
      }
      print("");
    }
  }

  TreasureMap findPathToTreasure() {
    var grid = new Grid(xMax + 1, yMax + 1, Utils.flatternTresureMap(this));

    var jps = new AStarFinder(allowDiagonal: false);
    var path = jps.findPath(start.x, start.y, treasure.x, treasure.y, grid);

    if (path.length == 0) {
      this.solvable = false;
    } else {
      for (var i = 1; i < path.length - 1; i++) {
        Coordinate c =
            this.cordinates[path.elementAt(i)[1]][path.elementAt(i)[0]];
        c.state = State.path;
        this.cordinates[path.elementAt(i)[1]][path.elementAt(i)[0]] = c;
      }
      this.solvable = true;
    }
    return this;
  }
}
