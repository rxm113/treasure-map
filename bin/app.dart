import '../lib/map.dart';
import '../lib/utils.dart';

String fileLocation = null;
// main method which takes text input from file, generates a Treasure Map object,
// processes the quickest path to the treasure and outputs the result (in format from spec) to file.
void main(List<String> args) async {
  TreasureMap tm =
      Utils.processTextToTreasureMap(await Utils.readTextMapFromFile(args[0]));
  print("* Ingesting Treasure map ..... quantums processing...");
  Utils.writeTextMapToFile(tm.findPathToTreasure(), args[0]);
  print(
      "* Complete, please see file for route to treasure at ${args[0]}.answer");
}
