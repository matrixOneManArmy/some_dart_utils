# some_dart_utils

A dart package which can perform deepCopy on maps and lists

## recursiveMapCopy()
As we know Map.from() performs only shallowCopy, you can use recursiveMapCopy() for deepCopying a map.

## recursiveListCopy()
As we know List.from() performs only shallowCopy, you can use recursiveListCopy() for deepCopying a list.

### Info
```
var temp = {
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

var tempSCopy = Map.from(temp);
var tempDCopy = recursiveMapCopy(temp);

temp["lev1"]["lev2"]["1"] = 11;

print(tempSCopy["lev1"]["lev2"]["1"]); // 11
print(tempDCopy["lev1"]["lev2"]["1"]); // 1
```
