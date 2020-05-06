library some_dart_utils;

/* This method returns the exact copy of a map 
  (IMP: Copy By Value , which is the key reason 
  for using this method instead of Map.from()).
  Also a helper method for the below.
*/
Map recursiveMapCopy(Map other){
  assert (other!=null, "other shouldn't be a null value");
  Map result = {};
  other.forEach((key, value) {
    if (value is Map)
      result[key]=recursiveMapCopy(value);
    else if (value is Iterable)
      result[key]=recursiveListCopy(value);
    else
      result[key]=value;
  });
  return result;
}

/* This method returns the exact copy of a list 
  (IMP: Copy By Value , which is the key reason 
  for using this method instead of List.from()).
  Also a helper method for the above.
*/
List recursiveListCopy(Iterable other){
  assert (other!=null, "other shouldn't be a null value");
  List result = [];
  other.forEach((element) {
    if (element is Map)
      result.add(recursiveMapCopy(element));
    else if (element is Iterable)
      result.add(recursiveListCopy(element));
    else
      result.add(element);
  });
  return result;
}