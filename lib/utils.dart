import 'dart:io';

import 'coordante.dart';
import 'state.dart';

import 'map.dart';

class Utils {
  final String fileLocation = null;
//get data from file and generate array of points.
  static TreasureMap processTextToTreasureMap(String text) {
    //inport data rom file

    List<String> commaSplit = text.split(",");
    //generate array
    List array = [];
    int maxx = 0;
    int maxy = 0;
    for (String item in commaSplit) {
      item = item.trim();
      int x = int.parse(item[1]);
      int y = int.parse(item[3]);
      array.add([x, y]);
      if (x > maxx) {
        maxx = x;
      }
      if (y > maxy) {
        maxy = y;
      }
    }

    return new TreasureMap(array, maxx, maxy);
  }

  //get data from file and generate array of points.
  static Future<String> readTextMapFromFile(String inputFile) async {
    Future<String> inputText = new File(inputFile).readAsString();
    return inputText;
  }

  static void writeTextMapToFile(TreasureMap tm, String fileLocation) {
    var file = new File(fileLocation + '.answer');
    var sink = file.openWrite();
    if (tm.cordinates == null) {
      sink.writeln("error");
      sink.close();
    }

    for (var item in tm.cordinates) {
      List<String> printableTreasureMapRow = new List<String>();
      for (Coordinate cordinate in item) {
        switch (cordinate.state) {
          case State.reef:
            {
              printableTreasureMapRow.add('x');
            }
            break;
          case State.ocea:
            {
              printableTreasureMapRow.add('.');
            }
            break;
          case State.star:
            {
              printableTreasureMapRow.add('S');
            }
            break;
          case State.path:
            {
              printableTreasureMapRow.add('O');
            }
            break;
          case State.gold:
            {
              printableTreasureMapRow.add('E');
            }
        }
      }
      sink.writeln(printableTreasureMapRow.join());
    }
    sink.close();
  }
}
