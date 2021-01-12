import 'dart:io';
import 'package:pathfinding/core/grid.dart';
import 'package:pathfinding/finders/astar.dart';

import 'coordante.dart';
import 'state.dart';

class TreasureMap {
  List cordinates = null;
  int x_max = 0;
  int y_max = 0;
  Coordinate start;
  Coordinate treasure;

  //Constrcutur: to String take input and build the Treasure Map.
  TreasureMap(List array, this.x_max, this.y_max) {
    //get max and max
    cordinates = List.generate(this.y_max + 1,
        (i) => List.generate(this.x_max + 1, (j) => new Coordinate(j, i)),
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

  List flatternTresureMap() {
    List flatternMap = [];
    for (var row in cordinates) {
      List tmp = [];
      for (Coordinate cordinate in row) {
        tmp.add(cordinate.ifPassable());
      }
      flatternMap.add(tmp);
    }

    return flatternMap;
  }

  TreasureMap findPathToTreasure() {
    // find tha path and adds 3 as identifier

    var grid = new Grid(x_max + 1, y_max + 1, flatternTresureMap());

    var jps = new AStarFinder(allowDiagonal: false);
    var path = jps.findPath(start.x, start.y, treasure.x, treasure.y, grid);
    // generate a copy of the treasure map object add solution, to be returned
    TreasureMap solvedTreasureMap = this;
    for (var i = 1; i < path.length - 1; i++) {
      Coordinate c = solvedTreasureMap.cordinates[path.elementAt(i)[1]]
          [path.elementAt(i)[0]];
      c.state = State.path;
      solvedTreasureMap.cordinates[path.elementAt(i)[1]][path.elementAt(i)[0]] =
          c;
    }
    return solvedTreasureMap;
  }
}
