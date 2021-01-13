import '../lib/map.dart';
import '../lib/utils.dart';

//TODO
// exceptipn handling - sort the error item out
// create some tests
// create readme with (diff path finding algorythms, why used dart, how to run, video)

String fileLocation = null;

void main(List<String> args) async {
  TreasureMap tm =
      Utils.processTextToTreasureMap(await Utils.readTextMapFromFile(args[0]));
  print("* Ingesting Treasure map ..... quantums processing...");
  Utils.writeTextMapToFile(tm.findPathToTreasure(), args[0]);
  print(
      "* Complete, please see file for route to treasure at ${args[0]}.answer");
}
