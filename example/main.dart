import 'package:some_dart_utils/some_dart_utils.dart';

void main(){
  var x = {
    "lev1": {
      "lev2" : {
        "1":1,
        "2":2,
        "lev3":{
          "name": [true, true]
        }
      }
    }
  };
  var y = recursiveMapCopy(x);
  var z = Map.from(x);
  x["lev1"]["lev2"]["1"]=11;
  print(y);
  print(z);
}